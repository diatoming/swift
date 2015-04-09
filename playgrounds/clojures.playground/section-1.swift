// Clojures Playground

import Cocoa

var moneyArray = [10,20,45,32]

// mapping
//
var stringsArray = moneyArray.map({ "\($0)€" })
println(stringsArray)

// filtering
//
var filteredArray = moneyArray.filter({$0 > 30})
println(filteredArray)

// reducing
//
var sum = moneyArray.reduce(0,combine: +)
println(sum)
