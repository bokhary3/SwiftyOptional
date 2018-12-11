//
//  AnyExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 12/11/18.
//

import UIKit

extension Optional where Wrapped == Any {
    
    //MARK: String?
    public var swiftyString: String {
        let value = self as? String
        return value.swiftyValue
    }
    public func swiftyString(default: String) -> String {
        let value = self as? String
        return value.swiftyDefault(value: `default`)
    }
    
    //MARK: Int?
    public var swiftyInt: Int {
        let value = self as? Int
        return value.swiftyValue
    }
    public func swiftyInt(default: Int) -> Int {
        let value = self as? Int
        return value.swiftyDefault(value: `default`)
    }
    
    //MARK: Double?
    public var swiftyDouble: Double {
        let value = self as? Double
        return value.swiftyValue
    }
    public func swiftyDouble(default: Double) -> Double {
        let value = self as? Double
        return value.swiftyDefault(value: `default`)
    }
    
    //MARK: Float?
    public var swiftyFloat: Float {
        let value = self as? Float
        return value.swiftyValue
    }
    public func swiftyFloat(default: Float) -> Float {
        let value = self as? Float
        return value.swiftyDefault(value: `default`)
    }
    
    //MARK: Bool?
    public var swiftyBool: Bool {
        let value = self as? Bool
        return value.swiftyValue
    }
    public func swiftyBool(default: Bool) -> Bool {
        let value = self as? Bool
        return value.swiftyDefault(value: `default`)
    }
    
    //MARK: UIImage?
    public func swiftyImage(default: UIImage) -> UIImage {
        let value = self as? UIImage
        return value.swiftyImage(default: `default`)
    }
    
    //MARK: Date?
    public func swiftyDate(string: String, format: String = "yyyy-MM-dd HH:mm:ss") -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        let value = self as? Date
        return value.swiftyDate(string: string, format: format)
    }
}
