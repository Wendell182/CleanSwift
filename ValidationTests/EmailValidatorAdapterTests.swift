//
//  ValidationTests.swift
//  ValidationTests
//
//  Created by Wendell Claus on 01/12/22.
//

import XCTest
import Presentation

public final class EmailValidatorAdapter: EmailValidator {
    private let pattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
    
    public func isValid(email: String) -> Bool {
        let range = NSRange(location: 0, length: email.utf16.count)
        let regex = try! NSRegularExpression(pattern: pattern)
        return regex.firstMatch(in: email, options: [], range: range) != nil
    }
}

class EmailValidatorAdapterTests: XCTestCase {
    func test_invalid_emials() {
        let sut = EmailValidatorAdapter()
        XCTAssertFalse(sut.isValid(email: "tf"))
        XCTAssertFalse(sut.isValid(email: "tf@"))
        XCTAssertFalse(sut.isValid(email: "for@toni"))
        XCTAssertFalse(sut.isValid(email: "ton@for."))
        XCTAssertFalse(sut.isValid(email: "@to.forms"))
    }
    
    func test_valid_emials() {
        let sut = EmailValidatorAdapter()
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@hotmail.com"))
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@forms.com"))       
    }

}
