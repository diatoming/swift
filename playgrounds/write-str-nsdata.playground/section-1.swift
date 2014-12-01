// Playground - noun: a place where people can play

import Foundation

let data     = "This is some important data!"
let fileName = "test.txt"

let filePath = NSTemporaryDirectory().stringByAppendingString("\(fileName)")

data.writeToFile(filePath, atomically: true,
  encoding: NSUTF8StringEncoding, error: nil)

