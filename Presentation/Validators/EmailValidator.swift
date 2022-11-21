//
//  EmailValidator.swift
//  Presentation
//
//  Created by Wendell Claus on 21/11/22.
//

import Foundation

public protocol EmailValidator {
    func isValid(email: String) -> Bool
}
