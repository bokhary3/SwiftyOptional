//
//  ArrayExtension.swift
//  Pods-SwiftyOptional_Example
//
//  Created by Elsayed Hussein on 12/12/18.
//

import Foundation

extension Optional where Wrapped: Collection {
    
    public var swiftyArray: Array<Wrapped.Element> {
        let value =  self as? Array<Wrapped.Element>
        return value ?? []
    }
}
