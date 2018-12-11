//
//  DateExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 12/11/18.
//

import Foundation

extension Optional where Wrapped == Date {
    
    //MARK: Unwrapping
    public var swiftyDate: Date {
        return self ?? Date()
    }
    
    public func swiftyDate(string: String, format: String = "yyyy-MM-dd HH:mm:ss") -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        let date = formatter.date(from: string)
        let value = self ?? date
        
        return value.swiftyDate
    }
}
