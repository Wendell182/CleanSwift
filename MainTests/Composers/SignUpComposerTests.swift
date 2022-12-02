//
//  SignUpComposerTests.swift
//  DataTests
//
//  Created by Wendell Claus on 01/12/22.
//

import XCTest
import Domain
import Main

class SignUpComposerTests: XCTestCase {
    func test_ui_presentation_integration() {
        let sut = SignUpComposer.composeControllerWith(addAccount: AddAccountSpy())
        checkMemoryLeak(for: sut)
    }
}
