# SwiftyOptional

[![CI Status](https://img.shields.io/travis/bokhary3/SwiftyOptional.svg?style=flat)](https://travis-ci.org/bokhary3/SwiftyOptional)
[![Version](https://img.shields.io/cocoapods/v/SwiftyOptional.svg?style=flat)](https://cocoapods.org/pods/SwiftyOptional)
[![License](https://img.shields.io/cocoapods/l/SwiftyOptional.svg?style=flat)](https://cocoapods.org/pods/SwiftyOptional)
[![Platform](https://img.shields.io/cocoapods/p/SwiftyOptional.svg?style=flat)](https://cocoapods.org/pods/SwiftyOptional)

## Using
SwiftyOtional will help you when using Optional types and have to work with ?? to get Wrapped value,
As example,  rather than to get first item in optional array like that: 

```swift
// Array
var countries: [String]? = ["Egypt", "Iraq", "Kwuit"]
let wrappedCountries: [String] = countries ?? []
let firstCountry = wrappedCountries.first ?? ""
```
You can get first item like that:
```swift
// Array
let countries: [String]? = ["Egypt", "Iraq", "Kwuit"]
let firstCountry = countries.swiftyArray.first.swiftyValue
print("First country: \(firstCountry)")
```

Also with optional types like String, Int, Float, Double
```swift
// Optional types
let unwrappedString: String? = "Hello world!"
let unwrappedInt: Int? = 25
let unwrappedFLoat: Float? = 2.5
let unwrappedDouble: Double? = 100.6

// rather than using ??
print("""
Wrapped String: \(unwrappedString ?? "")
Wrapped Int: \(unwrappedInt ?? 0)
Wrapped Float: \(unwrappedFLoat ?? 0.0)
Wrapped Double: \(unwrappedDouble ?? 0.0)
""")

// you can get warpped value by using swiftyValue
print("""
Wrapped String: \(unwrappedString.swiftyValue)
Wrapped Int: \(unwrappedInt.swiftyValue)
Wrapped Float: \(unwrappedFLoat.swiftyValue)
Wrapped Double: \(unwrappedDouble.swiftyValue)
""")

// Also can set your default value when wrapped value is nil
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

```

## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
Swift4.2, Xcode 10 and later.

## Installation
SwiftyOptional is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftyOptional'
```

## Author

bokhary3, elsayed.husseinn15@gmail.com

## License

SwiftyOptional is available under the MIT license. See the LICENSE file for more info.
