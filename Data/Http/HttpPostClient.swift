//
//  HttpPostClient.swift
//  Data
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

public protocol HttpPostClient {
    func post(to url: URL, with data: Data?, completion: @escaping (HttpError) -> Void)
}
