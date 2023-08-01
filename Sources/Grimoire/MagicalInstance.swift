//
//  MagicalInstance.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

/// wrapper for get instance of given types
@propertyWrapper
public class MagicalInstance<T> {
    
    var container = Grimoire.open
    
    public lazy var wrappedValue: T = container.resolve(T.self)
    
    public init() { }
}
