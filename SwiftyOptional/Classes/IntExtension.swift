//
//  IntExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Int {
    
    //MARK: Unwrapping
    public var swiftyValue: Int {
        return self ?? 0
    }
    
    public func swiftyDefault(value: Int) -> Int {
        return self ?? value
    }
    
    //MARK: Convert
    public var stringValue: String {
        let value = String(self.swiftyValue)
        return value
    }
    
    public var doubleValue: Double {
        let value = Double(self.swiftyValue)
        return value
    }
    
    public var floatValue: Float {
        let value = Float(self.swiftyValue)
        return value
    }
}
