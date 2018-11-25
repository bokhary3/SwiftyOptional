//
//  StringExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 11/8/18.
//

import Foundation

extension Optional where Wrapped == String {
    
    public var swiftyValue: String {
        return self ?? ""
    }
    
    public func swiftyDefaultValue(value: String) -> String {
        return self ?? value
    }
    
    
}
