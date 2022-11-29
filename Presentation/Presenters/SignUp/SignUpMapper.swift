//
//  SignUpMapper.swift
//  Presentation
//
//  Created by Wendell Claus on 29/11/22.
//

import Foundation
import Domain

public final class SignUpMapper {
    static func toAddAccountModel(viewModel: SignUpViewModel) -> AddAccountModel {
        return AddAccountModel(name: viewModel.name!, email: viewModel.email!, password: viewModel.password!, passwordConfirmation: viewModel.passwordConfirmation!)
    }
}
