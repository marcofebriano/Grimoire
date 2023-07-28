//
//  Grimoire.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 27/07/23.
//

import Foundation

/// **Grimoire** will act as container of dependencies.
/// which have ability to register some Instance
public class Grimoire {
    
    public static var open = Grimoire()
    
    var mappedInstance: [String: InstanceProvider] = [:]

    init() { }
    
    func resolve<T>(_ anyType: T.Type) -> T {
        let key = String(describing: anyType.self)
        guard let instance = mappedInstance[key] else {
            fatalError("the Instance Provider with key: \(key) not found!")
        }
        guard let resolver = instance.resolveInstance() as? T else {
            fatalError("the Instance Provider with key: \(key) not found!")
        }
        return resolver
    }
    
    @discardableResult
    public func registerModule(module: PackageProvider) -> Self {
        module.provide(for: self)
        return self
    }
}

// MARK: - singleton
extension Grimoire {
    
    @discardableResult
    public func registerSingleton<T>(for anyType: T.Type, with instance: @autoclosure @escaping () -> T) -> Self {
        registerSingleton(for: anyType, instance)
        return self
    }
    
    @discardableResult
    public func registerSingleton<T>(for anyTypes: [T.Type], with instance: @autoclosure @escaping () -> T) -> Self {
        registerSingleton(for: anyTypes, instance)
        return self
    }
    
    @discardableResult
    public func registerSingleton<T>(for anyType: T.Type, _ instance: @escaping () -> T) -> Self {
        let key = String(describing: anyType.self)
        mappedInstance[key] = InstanceSingleton(resolver: instance)
        return self
    }
    
    @discardableResult
    public func registerSingleton<T>(for anyTypes: [T.Type], _ instance: @escaping () -> T) -> Self {
        anyTypes.forEach {
            let key = String(describing: $0.self)
            mappedInstance[key] = InstanceSingleton(resolver: instance)
        }
        return self
    }
}

// MARK: - Transient
extension Grimoire {
    
    @discardableResult
    public func registerTransient<T>(for anyType: T.Type, with instance: @autoclosure @escaping () -> T) -> Self {
        registerTransient(for: anyType, instance)
        return self
    }
    
    @discardableResult
    public func registerTransient<T>(for anyTypes: [T.Type], with instance: @autoclosure @escaping () -> T) -> Self {
        registerTransient(for: anyTypes, instance)
        return self
    }
    
    @discardableResult
    public func registerTransient<T>(for anyType: T.Type, _ instance: @escaping () -> T) -> Self {
        let key = String(describing: anyType.self)
        mappedInstance[key] = InstanceTransient(resolver: instance)
        return self
    }
    
    @discardableResult
    public func registerTransient<T>(for anyTypes: [T.Type], _ instance: @escaping () -> T) -> Self {
        anyTypes.forEach {
            let key = String(describing: $0.self)
            mappedInstance[key] = InstanceTransient(resolver: instance)
        }
        return self
    }
}
