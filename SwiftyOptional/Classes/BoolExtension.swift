//
//  BoolExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 11/27/18.
//

import Foundation

extension Optional where Wrapped == Bool {
    
    //MARK: Unwrapping
    public var swiftyValue: Bool {
        return self ?? false
    }
    
    public func swiftyDefault(value: Bool) -> Bool {
        return self ?? value
    }
}
