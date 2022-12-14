//
//  ValidationTests.swift
//  ValidationTests
//
//  Created by Wendell Claus on 01/12/22.
//

import XCTest
import Infrab

class EmailValidatorAdapterTests: XCTestCase {
    func test_invalid_emials() {
        let sut = makeSut()
        XCTAssertFalse(sut.isValid(email: "tf"))
        XCTAssertFalse(sut.isValid(email: "tf@"))
        XCTAssertFalse(sut.isValid(email: "for@toni"))
        XCTAssertFalse(sut.isValid(email: "ton@for."))
        XCTAssertFalse(sut.isValid(email: "@to.forms"))
    }
    
    func test_valid_emials() {
        let sut = makeSut()
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@gmail.com"))
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@hotmail.com"))
        XCTAssertTrue(sut.isValid(email: "wendellclaus.42@forms.com"))
    }

}

extension EmailValidatorAdapterTests {
    func makeSut() -> EmailValidatorAdapter {
        return EmailValidatorAdapter()
    }
}
