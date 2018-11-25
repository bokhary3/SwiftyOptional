//
//  IntExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 11/25/18.
//

import Foundation

extension Optional where Wrapped == Int {
    
    public var swiftyValue: Int {
        return self ?? 0
    }
    
    public func swiftyDefaultValue(value: Int) -> Int {
        return self ?? value
    }
}
