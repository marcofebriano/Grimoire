//
//  MagicalInstance.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

/// wrapper for get instance of given types
@propertyWrapper
public struct MagicalInstance<T> {
    
    var container = Grimoire.open
    
    private var value: T
    
    public var wrappedValue: T {
        get { return value }
        set { value = newValue }
    }
    
    public init() {
        self.value = container.resolve(T.self)
    }
}
