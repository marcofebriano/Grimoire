//
//  ViewController.swift
//  Grimoire
//
//  Created by marcofebriano on 07/27/2023.
//  Copyright (c) 2023 marcofebriano. All rights reserved.
//

import UIKit
import Grimoire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        registerInstance()
        let intanceC = InstanceC()
        intanceC.printValue()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerInstance() {
        let grimoire = Grimoire.open
        grimoire
            .registerSingleton(for: ProA.self, with: InstanceA())
            .registerSingleton(for: ProB.self) {
                let instance = InstanceB()
                instance.stringB = "new value of stringB"
                return instance
            }
    }

}

protocol ProA: AnyObject {
    var stringA: String { get set }
}

protocol ProB: AnyObject {
    func printValue()
}

class InstanceA: ProA {
    var stringA: String = "value A"
}

class InstanceB: ProB {
    @MagicalInstance var instanceA: ProA
    var stringB: String = ""
    
    func printValue() {
        print("valueB: \(stringB), \nvalueA: \(instanceA.stringA)")
    }
}

struct InstanceC {
    @MagicalInstance var instanceB: ProB
    
    func printValue() {
        instanceB.printValue()
    }
}


