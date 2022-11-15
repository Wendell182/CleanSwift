//
//  RemoteAddAccount.swift
//  Data
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation
import Domain

public final class RemoteAddAccount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    public init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    
    public func add(addCccountModel: AddAccountModel) {
        httpClient.post(to: url, with: addCccountModel.toData())
    }
}