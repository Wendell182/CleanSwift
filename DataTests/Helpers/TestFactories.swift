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

func makeEmptyData() -> Data {
    return Data()
}

func makeValidData() -> Data {
    return Data("{\"name\":\"WendellClaus\"}".utf8)
}

func makeUrl() -> URL {
    return URL(string: "http://any-url.com")!
}

func makeError() -> Error {
    return NSError(domain: "any_error_toninho_forms", code: 0)
}

func makeHttpResponse(statusCode: Int = 200) -> HTTPURLResponse {
    return HTTPURLResponse(url: makeUrl(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
}
