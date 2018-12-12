//
//  DictionaryExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 12/12/18.
//

import Foundation

extension Optional where Wrapped: ExpressibleByDictionaryLiteral, Wrapped.Key: Hashable, Wrapped.Value: AnyObject {
    public var swiftyDictionary: Dictionary<Wrapped.Key,Wrapped.Value> {
        let value =  self as? Dictionary<Wrapped.Key, Wrapped.Value>
        return value ?? [:]
    }
}
