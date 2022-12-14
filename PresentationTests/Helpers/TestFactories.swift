//
//  TestFactories.swift
//  PresentationTests
//
//  Created by Wendell Claus on 29/11/22.
//

import Foundation
import Presentation

func makeSignUpViewModel(name: String? = "any_name", email: String? =  "any_email@email.com", password: String? = "any_password", passwordConfirmation: String? = "any_password") -> SignUpViewModel {
    return SignUpViewModel(name: name, email: email, password: password, passwordConfirmation: passwordConfirmation)
}
