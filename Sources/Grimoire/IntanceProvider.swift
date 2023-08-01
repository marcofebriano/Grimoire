//
//  IntanceProvider.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

protocol InstanceProvider {
    func resolveInstance() -> Any
}

/// this class will hold the Instance in closure variable.
/// then will create instance when the closure variable called.
/// its mean, the instance always create new
class ShadowInstance<Instance>: InstanceProvider {
    
    var resolver: () -> Instance
    
    init(resolver: @escaping () -> Instance) {
        self.resolver = resolver
    }
    
    func resolveInstance() -> Any {
        return resolver()
    }
}

/// this class will always create instance once.
/// because the closure variable already called in this class in lazy variable.
/// so this behavior similar with **singleton pattern**.
class SingularInstance<Instance>: InstanceProvider {
    
    var resolver: () -> Instance
    
    private lazy var _instance: Instance = resolver()
    
    var instance: Instance {
        return _instance
    }
    
    init(resolver: @escaping () -> Instance) {
        self.resolver = resolver
    }
    
    func resolveInstance() -> Any {
        return instance
    }
}
