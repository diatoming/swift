// Playground - noun: a place where people can play

import Foundation

class Dog {
  let name : String
  let age  : Int

  init(name: String, age: Int) {
    self.name = name.capitalizedString
    self.age  = age
  }

  func description() -> String {
    return "Hi! My name is \(self.name). I'm \(self.age) years old!"
  }
}

let snoopy = Dog(name: "snoopy", age: 1)

snoopy

