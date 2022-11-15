//
//  RemoteAddAccount.swift
//  Data
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation
import Domain

public final class RemoteAddAccount: AddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    public init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    public func add(addCccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, DomainError>) -> Void) {
        httpClient.post(to: url, with: addCccountModel.toData()) { error in
            completion(.failure(.unexpected))
        }
    }
}
