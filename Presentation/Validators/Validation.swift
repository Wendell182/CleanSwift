//
//  Validation.swift
//  Presentation
//
//  Created by Wendell Claus on 06/12/22.
//

import Foundation


public protocol Validation {
    func validate(data: [String: Any]?) -> String?
}
