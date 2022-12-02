//
//  UseCaseFactories.swift
//  Main
//
//  Created by Wendell Claus on 01/12/22.
//

import Foundation
import Data
import Infra
import Domain

final class UseCaseFactory {
    //private static let apiV2 = "https://fordevs.herokuapp.com/api/signup"
    private static let httpClient = AlamofireAdapter()
    private static let apiBaseUrl = Environment.variable(.apiBaseUrl)
    
    private static func makeUrl(path: String) -> URL {
         return URL(string: "\(apiBaseUrl)/\(path)")!
    }
    
    static func makeRemoteAddAccount() -> AddAccount {
        return RemoteAddAccount(url: makeUrl(path: "signup"), httpClient: httpClient)
    }
}
