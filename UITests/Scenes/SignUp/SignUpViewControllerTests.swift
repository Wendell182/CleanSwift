//
//  UITests.swift
//  UITests
//
//  Created by Wendell Claus on 30/11/22.
//

import XCTest
import UIKit
@testable import UI
import Presentation

class SignUpViewControllerTests: XCTestCase {
    func test_loading_is_hidden_on_start() {
        let sut = makeSut()
        XCTAssertEqual(sut.loadingIndicator?.isAnimating, false)
    }
    
    func test_sut_implements_loadingView() {
        let sut = makeSut()
        XCTAssertNotNil(sut as LoadingView)
    }
    
    func test_sut_implements_alertView() {
        let sut = makeSut()
        XCTAssertNotNil(sut as AlertView)
    }
    
    func test_save_button_calls_signUp_on_tap() {
        var signUpViewModel: SignUpViewModel?
        let sut = makeSut(signUpSpy: { signUpViewModel = $0 })
        sut.saveButton?.simulateTap()
        let name = sut.nameTextField?.text
        let email = sut.emailTextField?.text
        let password = sut.passwordTextField?.text
        let passwordConfirmation = sut.passwordConfirmationTextField?.text
        XCTAssertEqual(signUpViewModel, SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation))
    }
}
  
extension SignUpViewControllerTests {
    func makeSut(signUpSpy: ((SignUpViewModel) -> Void)? = nil) -> SignUpViewController {
        let sut = SignUpViewController.instantiate()
        sut.signUp = signUpSpy
        sut.loadViewIfNeeded()
        return sut
    }
}

