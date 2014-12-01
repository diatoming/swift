// Playground - noun: a place where people can play

import Foundation

// pi -- wiki
// 3.14159265358979323846264338327950288419716939937510

// tau -- WA
// 2 * 3.14159265358979323846264338327950288419716939937510
// 6.2831853071795864769252867665590057683943387987502

let piStr = "3.14159265358979323846264338327950288419716939937510"
let piBD  = NSDecimalNumber(string: piStr)
let twoBD = NSDecimalNumber(string: "2")

println(piBD) // 3.14159265358979323846264338327950288419

let tauBD = piBD.decimalNumberByMultiplyingBy(twoBD)

println(tauBD) // 6.2831853071795864769252867665590057684  good!

println(NSDecimalNumber.maximumDecimalNumber())
println(NSDecimalNumber.minimumDecimalNumber())
