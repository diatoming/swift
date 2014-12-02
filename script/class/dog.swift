#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// dog.swift
// released: Mon Dec  1 22:18:07 CET 2014
//++

//== Description
// a simple class emmulating a dog
//
//== Run
// $ swift ./dog.swift
//
//== Compile
// $ swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) ./dog.swift
//
//== Source
//
//== Author
// rimbaud1854
//
//== Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

import Foundation

class Dog {
  let name : String
  let age  : Int
  
  init(name: String, age: Int) {
    self.name = name
    self.age  = age
  }
  
  func toLower(#string: String) ->String
  {
      return "";
  }
  
  func description() -> String {
    return "Hi! My name is \(name). I'm \(age) years old!"
  }
  
}

let snoopy = Dog(name: "snoopy", age: 1)

println(snoopy.description())
