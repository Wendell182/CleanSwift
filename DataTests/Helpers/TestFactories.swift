//
//  TestFactories.swift
//  DataTests
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

func makeInvalidData() -> Data {
    return Data("invalid_toninho".utf8)
}

func makeUrl() -> URL {
    return URL(string: "http://any-url.com")!
}
