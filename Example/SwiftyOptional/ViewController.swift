//
//  ViewController.swift
//  SwiftyOptional
//
//  Created by bokhary3 on 11/25/2018.
//  Copyright (c) 2018 bokhary3. All rights reserved.
//

import UIKit
import SwiftyOptional

class ViewController: UIViewController {

    var optionalString: String? = "Hello World!"
    var unssignedOptionalString: String?
    var anyValue: Any? = 7
    var stringValue: Any? = "Hello From Any to Any"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("""
            Wrapped not nil string \(optionalString.intValue),
            Wrapped nil string \(unssignedOptionalString.swiftyValue),
            Wrapped nil string with default \(unssignedOptionalString.swiftyDefault(value: "Hola"))
            any \(anyValue.swiftyInt)
            string value \(stringValue.swiftyString)
            """)
    }

}

