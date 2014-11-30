// Playground - noun: a place where people can play

import Foundation


var score = 0

for idx in 0...10 {
    score = score + idx
}


score = 0

for idx in 0..<10 {
    score = score + idx
}


let word = "This is a string!"

for token in word {
    token
}

// when there's no explicit iterator (?)

for _ in 0..<3 {
  println("This is a test!")
}

