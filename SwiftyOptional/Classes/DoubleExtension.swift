//
//  DoubleExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Double {
    
    //MARK: Unwrapping
    public var swiftyValue: Double {
        return self ?? 0
    }
    
    public func swiftyDefault(value: Double) -> Double {
        return self ?? value
    }
    
    //MARK: Convert
    public var stringValue: String {
        let value = String(self.swiftyValue)
        return value
    }
    
    public var floatValue: Float {
        let value = Float(self.swiftyValue)
        return value
    }
    
    public var intValue: Int {
        let value = Int(self.swiftyValue)
        return value
    }
}
