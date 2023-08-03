# Grimoire

Grimoire is Basic Dependency Injection with annotation. you will see the magic happen with this library.

[![CI Status](https://img.shields.io/travis/marcofebriano/Grimoire.svg?style=flat)](https://travis-ci.org/marcofebriano/Grimoire)
[![Version](https://img.shields.io/cocoapods/v/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![License](https://img.shields.io/cocoapods/l/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![Platform](https://img.shields.io/cocoapods/p/Grimoire.svg?style=flat)](https://cocoapods.org/pods/Grimoire)
[![SwiftPM Compatible](https://img.shields.io/badge/SwiftPM-Compatible-brightgreen)](https://swift.org/package-manager/)

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

---

## Usage

### First Step
```swift
import Grimoire
```

### Second Step
you should register all dependencies that you will use later

**Register Singular:**
- this is how you should register your Instance or Dependency that will treat as **Singleton Instance**.
```swift
        Grimoire.open.registerSingular(for: Instance.self, with: InstanceA())
```

**Register Shadow:**
- this method will treat your Instance always in shadow. and always recreate whenever you need.
```swift
        Grimoire.open.registerShadow(for: InsB.self, with: InstanceB())
```

### Usage Step
after you register all Intance/dependencies that you need, then here's how you can call you Instance or Dependencies you have registered.

**1. with Property Wrapper:**
```swift
class InjectedByPropertyWraper {
    @MagicalInstance var someInstance: InsB
    
    ...
    ...
    ...
}
```

**2. with global function:**

```swift
class InjectedByInit {
    var dependency: Dependency
    
    init(dependency: Dependency = magicalInject(of: Dependency.self)) {
        self.dependency = dependency
    }
}
```

or

```swift
class InjectedByInit {
    var dependency: Dependency
    
    init(dependency: Dependency = magicalInject()) {
        self.dependency = dependency
    }
}
