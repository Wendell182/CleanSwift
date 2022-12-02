//
//  SignUpComposerTests.swift
//  DataTests
//
//  Created by Wendell Claus on 01/12/22.
//

import XCTest
import Domain
import Main
import UI

class SignUpComposerTests: XCTestCase {
    func test_background_request_should_complete_on_main_thread() {
        let (sut, _) = makeSut()
        sut.loadViewIfNeeded()
        sut.signUp?(makeSignUpViewModel())
        let exp = expectation(description: "waiting")
        DispatchQueue.global().sync {
            exp.fulfill()
        }
        wait(for: [exp], timeout: 1)
    }
}
 
extension SignUpComposerTests {
    func makeSut(file: StaticString = #filePath, line: UInt = #line) -> (sut: SignUpViewController, addAccountSpy: AddAccountSpy ) {
        let addAccountSpy = AddAccountSpy()
        let sut = SignUpComposer.composeControllerWith(addAccount: MainQueueDispatchDecorator(addAccountSpy))
        checkMemoryLeak(for: sut, file: file, line: line)
        checkMemoryLeak(for: addAccountSpy, file: file, line: line)
        return (sut, addAccountSpy)
    }
}
