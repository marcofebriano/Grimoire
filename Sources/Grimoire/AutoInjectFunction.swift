//
//  AutoInjectFunction.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

public func magicalInject<T>(of anyType: T.Type = T.self) -> T {
    return Grimoire.open.resolve(anyType)
}
