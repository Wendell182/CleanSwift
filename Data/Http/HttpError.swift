//
//  HttpError.swift
//  Data
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

public enum HttpError: Error {
    case noConnectivityError
    case badRequest
    case serverError
    case unauthorized
    case forbidden
}
