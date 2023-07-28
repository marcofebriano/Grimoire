# Grimoire

[![CI Status](https://img.shields.io/travis/marcofebriano/Grimoire.svg?style=flat)](https://travis-ci.org/marcofebriano/Grimoire)
[![Version](https://img.shields.io/cocoapods/v/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![License](https://img.shields.io/cocoapods/l/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![Platform](https://img.shields.io/cocoapods/p/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen)](https://swift.org/package-manager/)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Grimoire is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Grimoire'
```

```swift
dependencies: [
    .package(url: "https://github.com/marcofebriano/Grimoire.git", .upToNextMajor(from: "1.0.0"))
]
```

Use it in your target as `Grimoire`

```swift
 .target(
    name: "yourModule",
    dependencies: ["Grimoire"]
)
```

## Author

marcofebriano, febrianomarco@gmail.com

## License

Grimoire is available under the MIT license. See the LICENSE file for more info.
