#!/usr/bin/env swift

// three ways to retrieve process info:

// the swiftest! Process from std lib
for arg in Process.arguments {
    println(arg)
}

// the swifter: NSProcessInfo included in Foundation
import Foundation

let pi = NSProcessInfo()

for arg in pi.arguments {
	println(arg)
}

// last option: the C style: using predefined global vars
println(C_ARGC) //CInt
println(C_ARGV) // CString
