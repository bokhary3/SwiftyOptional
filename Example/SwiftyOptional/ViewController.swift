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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Array
        let countries: [String]? = ["Egypt", "Iraq", "Kwuit"]
        let firstCountry = countries.swiftyArray.first.swiftyValue
        print("First country: \(firstCountry)")
        
        
        // Optional types
        let unwrappedString: String? = "Hello world!"
        let unwrappedInt: Int? = 25
        let unwrappedFLoat: Float? = 2.5
        let unwrappedDouble: Double? = 100.6
        
        // rather than useing ??
        print("""
            Wrapped String: \(unwrappedString ?? "")
            Wrapped Int: \(unwrappedInt ?? 0)
            Wrapped Float: \(unwrappedFLoat ?? 0.0)
            Wrapped Double: \(unwrappedDouble ?? 0.0)
            """)
        
        // you can get warpped value by swiftyValue
        print("""
            Wrapped String: \(unwrappedString.swiftyValue)
            Wrapped Int: \(unwrappedInt.swiftyValue)
            Wrapped Float: \(unwrappedFLoat.swiftyValue)
            Wrapped Double: \(unwrappedDouble.swiftyValue)
            """)
        
        print("""
            Wrapped String: \(unwrappedString.swiftyDefault(value: "non")), set non if unwrappedString is nil
            Wrapped Int: \(unwrappedInt.swiftyDefault(value: 1)), set 0 if unwrappedInt is nil
            Wrapped Float: \(unwrappedFLoat.swiftyDefault(value: 1.5)), set 1.5 if unwrappedFLoat is nil
            Wrapped Double: \(unwrappedDouble.swiftyDefault(value: 5.5)), set 5.5 if unwrappedDouble is nil
            """)
        
        // Also you can parse optional Any and get wrapped value
        let username: Any? = "Bokhary"
        let itemsOrderCount: Any? = 10
        let totalPrice: Any? = 500.5
        
        print("""
            Parse Any to Wrapped String: \(username.swiftyString)
            Parse Any to Wrapped Int: \(itemsOrderCount.swiftyInt)
            Parse Any to Wrapped Double: \(totalPrice.swiftyDouble)
            """)
        
        // Can parse between types
        let tenTimes: String? = "10"
        let feeCost: Int? = 200
        print("""
            Parse Optioanl String to Wrapped Int: \(tenTimes.intValue)
            Parse Optional Int to Wrapped Double: \(feeCost.doubleValue)
            """)
    }
    
}

