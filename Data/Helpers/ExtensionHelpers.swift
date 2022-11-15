//
//  ExtensionHelpers.swift
//  Data
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

public extension Data {
    func toModel<T: Decodable>() -> T? {
        return try? JSONDecoder().decode(T.self, from: self)
    }
}
