// Playground - noun: a place where people can play

import Foundation

class Dog {

  let name : String
  let age  : Int

  init (name:String, age:Int) {
    self.name = name
    self.age  = age
  }

  func description() -> String {
    return "Hi! My name is \(self.name). I'm \(self.age) years old :)"
  }

}

let snoopy = Dog(name: "Snoopy", age: 1)

println(snoopy.name)
println(snoopy.age)
println(snoopy.description())

let anotherSnoopy = Dog(name: "Another Snoopy", age: 10)
println(anotherSnoopy.description())
