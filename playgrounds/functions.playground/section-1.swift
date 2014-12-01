// Playground - noun: a place where people can play

import Foundation

// func without named parameters
func join(s1: String, s2: String, joiner: String) -> String {
  return s1 + joiner + s2
}

// not so informative call
join("hello", "world", "-")


// func with named parameters
func join(string s1: String, toString s2: String, withJoiner
  joiner: String) -> String {
  return s1 + joiner + s2
}

// informative call
join(string:"hello", toString:"world", withJoiner:" ")

