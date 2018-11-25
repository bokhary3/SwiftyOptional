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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("""
            Wrapped not nil string \(optionalString.swiftyValue),
            Wrapped nil string \(unssignedOptionalString.swiftyValue),
            Wrapped nil string with default \(unssignedOptionalString.swiftyDefaultValue(value: "Hola"))
            """)
    }

}

