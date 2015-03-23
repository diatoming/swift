//
//  Person.swift
//  person
//
//  Created by art on 2014.07.1.
//  Copyright (c) 2014 rimbaudcode. All rights reserved.
//

import Foundation

struct Person {
    
    let firstname: String = ""
    let lastname : String = ""
}

extension Person {

  func greet() -> String {
    return "Hello! My name is \(self.firstname.capitalizedString) \(self.lastname.capitalizedString)."
  }

  func greetSomebody(somebody: String) -> String {
    return "Hi, \(somebody.capitalizedString)!"
  }

}
