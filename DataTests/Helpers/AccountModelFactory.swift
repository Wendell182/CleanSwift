//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation
import Domain

func makeAccountModel() -> AccountModel {
    return AccountModel(id: "any_id", name: "tony", email: "any@email.com", password: "any_pasword")
}
