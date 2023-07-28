//
//  PackageProvider.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

public protocol PackageProvider {
    init()
    func provide(for container: Grimoire)
}
