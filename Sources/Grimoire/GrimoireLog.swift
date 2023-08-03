//
//  GrimoireLog.swift
//  Grimoire
//
//  Created by Marco Febriano Ramadhani on 03/08/23.
//

import Foundation

enum GrimoireLogType {
    case registerSingleton(_ key: String)
    case registerTransient(_ key: String)
}

public class GrimoireLog {
    public static var show: Bool = false
    
    static func showLog(for logType: GrimoireLogType) {
        guard GrimoireLog.show else { return }
        
        switch logType {
        case .registerSingleton(let key):
            print("[Grimoire] (\(key)) --> successfully register as Singleton Instance")
        case .registerTransient(let key):
            print("[Grimoire] (\(key)) --> successfully register as Transient Instance")
        }
    }
    
    static func instanceNotFound(key: String) -> String {
        return "[Grimoire] the Instance Provider with key: \(key) not found! Please register first the instance!"
    }
}
