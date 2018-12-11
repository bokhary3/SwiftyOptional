//
//  UIImageExtension.swift
//  SwiftyOptional
//
//  Created by Elsayed Hussein on 12/11/18.
//

import UIKit

extension Optional where Wrapped == UIImage {
    
    //MARK: Unwrapping
    public func swiftyImage(default: UIImage) -> UIImage {
        return self ?? `default`
    }
}
