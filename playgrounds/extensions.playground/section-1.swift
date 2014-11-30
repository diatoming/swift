// Playground - noun: a place where people can play

import Foundation


extension NSArray {

  class func arrayWithNZeros(n: Int) -> NSArray {
    return Array(count: n, repeatedValue: 0)
  }

  class func arrayWithNOnes(n: Int) -> NSArray {
    return Array(count: n, repeatedValue: 1)
  }

}

let arr1 = NSArray.arrayWithNZeros(10)
let arr2 = NSArray.arrayWithNOnes(10)


extension String {

  var length: Int {
    get {
      return countElements(self)
    }
  }

}

let phrase = "This is a test!"
phrase.length == countElements(phrase)

