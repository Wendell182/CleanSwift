//
//  AddAccount.swift
//  Domain
//
//  Created by Wendell Claus on 14/11/22.
//

import Foundation

protocol AddAccount {
    func add(addCccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passwordConfirmation: String
}
