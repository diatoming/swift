// Playground - noun: a place where people can play

// Immutable Models — Swift
// https://medium.com/swift-programming/immutable-models-swift-29973170c08c

// How to keep your Swift models and classes clean
// https://medium.com/swift-programming/keep-your-swift-models-clean-ea7eb314d49d

import Foundation

// idea: 
// * separate model data from model functionality, so to have clean model
// and clean functionality
// * keep data immutable as much as possible

// practice:
// object's model goes into a 'struct' to make its data immutable
// object's constructors are unnecessary, since structs have their own
// by default
// notice the use of 'let' instead of 'var'
//
struct Person {
  let firstname: String
  let lastname: String
  let age: Int
}

// object's functionality goes into an 'extension', to separate data from
// logic
//
extension Person {
  func fullname() -> String {
    return firstname.capitalizedString + " " + lastname.capitalizedString
  }
}

// if mutability is required, as in Person's age, use an extension to
// generate a new object! The old one remains because it's immutable
//
extension Person {
  func age(age: Int) -> Person {
    return Person(firstname: firstname, lastname: lastname, age: age)
  }
}

// example:
// Notice the use of 'let' (immutable data!) when instanciating an object
//
let john = Person(firstname: "john", lastname: "doe", age: 19)

println("Hi! My name is \(john.fullname()). I'm \(john.age).")

// protocol conformance
//
// say now that the Person model needs to conform to a protocol:
// AgeClasificationProtocol
//
protocol AgeClasificationProtocol {
  var age: Int { get }
  func agetype() -> String
}

// add Person conformance to the protocal through an extension; again,
// to have separated model from functionality
//
extension Person : AgeClasificationProtocol {
  func agetype() -> String {
    switch age {
    case 0...2:
      return "Baby"
    case 2...12:
      return "Child"
    case 13...19:
      return "Teenager"
    case let x where x > 65:
      return "Elderly"
    default:
      return "Normal"
    }
  }
}

// test protocol conformance
//
println("\(john.fullname()) is a \(john.agetype()).")
