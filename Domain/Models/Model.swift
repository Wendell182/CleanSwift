//
//  Model.swift
//  Domain
//
//  Created by Wendell Claus on 15/11/22.
//

import Foundation

public protocol Model: Encodable, Decodable, Equatable {}

public extension Model {
    func toData() ->  Data? {
        return try? JSONEncoder().encode(self)
    }
    
    func toJson() -> [String: Any]? {
        guard let data = self.toData() else { return nil }
        return try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any]
    }
}

