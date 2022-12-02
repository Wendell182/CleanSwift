//
//  SignUpComposer.swift
//  Main
//
//  Created by Wendell Claus on 01/12/22.
//

import Foundation
import Domain
import UI

public final class SignUpComposer {
    public static func composeControllerWith(addAccount: AddAccount) -> SignUpViewController {
        return ControllerFactory.makeSignUp(addAccount: addAccount)
    }
}
