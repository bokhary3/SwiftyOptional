//
//  StringExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 11/8/18.
//

import Foundation

extension Optional where Wrapped == String {
    
    //MARK: Unwrapping
    public var swiftyValue: String {
        return self ?? ""
    }
    
    public func swiftyDefault(value: String) -> String {
        return self ?? value
    }
    
    //MARK: Convert
    public var intValue: Int {
        let value = Int(self.swiftyValue)
        return value.swiftyValue
    }
    
    public func intValue(default: Int) -> Int {
        let value = Int(self.swiftyValue)
        return value.swiftyDefault(value: `default`)
    }
    
    public var doubleValue: Double {
        let value = Double(self.swiftyValue)
        return value.swiftyValue
    }
    
    public func DoubleValue(default: Double) -> Double {
        let value = Double(self.swiftyValue)
        return value.swiftyDefault(value: `default`)
    }
    
    public var floatValue: Float {
        let value = Float(self.swiftyValue)
        return value.swiftyValue
    }
    
    public func floatValue(default: Float) -> Float {
        let value = Float(self.swiftyValue)
        return value.swiftyDefault(value: `default`)
    }
}
