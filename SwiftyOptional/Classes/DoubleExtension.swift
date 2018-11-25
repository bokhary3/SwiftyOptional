//
//  DoubleExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Double {
    
    public var swiftyValue: Double {
        return self ?? 0
    }
    
    public func swiftyDefaultValue(value: Double) -> Double {
        return self ?? value
    }
}
