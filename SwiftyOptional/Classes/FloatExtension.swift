//
//  FloatExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Float {
    
    public var swiftyValue: Float {
        return self ?? 0
    }
    
    public func swiftyDefaultValue(value: Float) -> Float {
        return self ?? value
    }
}
