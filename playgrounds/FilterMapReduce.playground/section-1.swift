//
// External iteration:
// determine what you want, then _how_ to do it
// traditional solution: for...loop (problem with index, tmp variables, ...)
// better solution: for...in loop
// best solution: closures (from functional programming)

// Internal iteration:
// determine what you want, _not_ how to do it
// Ex. "here's an array, give me the sum of its elements"
// * functions (closures):
// * sort/sorted
// * filter: locate elements that satisfy criteria
// * map: map every element to a new value
// * reduce: combine elements into a single value

import Foundation

let values = [3,10,6,1,4,8,2,5,9,7]

// SORT
let sortedArray = values.sorted(<)

// FILTER
// filter even elements
let evens = values.filter({$0 % 2 == 0})
println(evens)

// MAP
// sqrs of elements
let sqrs = values.map({$0 * $0})
println(sqrs)

// REDUCE
// sum of elements
let sum = values.reduce(0, {$0 + $1})
println(sum)

// COMBINE
let sumOfSqrs = values.filter({$0 % 2 == 0})
  .map({$0 * $0})
  .reduce(0, {$0 + $1})
println(sum)
