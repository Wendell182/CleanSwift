//
//  SignUpViewModel.swift
//  Presentation
//
//  Created by Wendell Claus on 29/11/22.
//

import Foundation
import Domain

public struct SignUpViewModel: Model {
    public var name: String?
    public var email: String?
    public var password: String?
    public var passwordConfirmation: String?
    
    public init(name: String? = nil, email: String? = nil, password: String? = nil,  passwordConfirmation: String? = nil ) {
        self.name = name
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
}
