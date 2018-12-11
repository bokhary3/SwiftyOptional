//
//  FloatExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Float {
    
    //MARK: Unwrapping
    public var swiftyValue: Float {
        return self ?? 0
    }
    
    public func swiftyDefault(value: Float) -> Float {
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
    
    public var intValue: Int {
        let value = Int(self.swiftyValue)
        return value
    }
}
