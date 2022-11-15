//
//  AddAccount.swift
//  Domain
//
//  Created by Wendell Claus on 14/11/22.
//

import Foundation

public protocol AddAccount {
    func add(addCccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}

public struct AddAccountModel {
    public var name: String
    public var email: String
    public var password: String
    public var passwordConfirmation: String
}
