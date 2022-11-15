//
//  Model.swift
//  Domain
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

public protocol Model: Encodable {}

public extension Model {
    func toData() ->  Data? {
        return try? JSONEncoder().encode(self)
    }
}

