//
//  SignUpIntegrationTests.swift
//  DataTests
//
//  Created by Wendell Claus on 01/12/22.
//

import XCTest
import Domain
import Main

class SignUpIntegrationTests: XCTestCase {
    func test_ui_presentation_integration() {
        debugPrint("==============TONINHO============FUCKING==================FORMS==========")
        debugPrint(Environment.variable(.apiBaseUrl))
        debugPrint("==============LIVES============FOR==================EVER==========")
        let sut = SignUpComposer.composeControllerWith(addAccount: AddAccountSpy())
        checkMemoryLeak(for: sut)
    }
}
