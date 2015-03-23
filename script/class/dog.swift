#!/usr/bin/env swift

import Foundation

struct Dog {
  let name : String
  let age : Int
}

extension Dog {
  func toLower(string: String) ->String {
      return "";
  }
  
  func description() -> String {
    return "Hi! My name is \(name). I'm \(age) years old!"
  }
}

let snoopy = Dog(name: "snoopy", age: 2)

println(snoopy.description())
