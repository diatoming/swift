//
//  Person.swift
//  person
//
//  Created by art on 2014.07.1.
//  Copyright (c) 2014 rimbaudcode. All rights reserved.
//

import Foundation

class Person: NSObject {
    
    let firstname: String = ""
    let lastname : String = ""
    
    init(firstname: String, lastname: String) {
        self.firstname = firstname.capitalizedString
        self.lastname  = lastname.capitalizedString
    }
    
    func greet() -> String {
        return "Hello! My name is \(self.firstname) \(self.lastname)."
    }
    
    func greetSomebody(somebody: String) -> String {
        return "Hi, \(somebody.capitalizedString)!"
    }
    
}
