#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// process-info.swift
// released: Mon Dec  1 21:37:36 CET 2014
//++

//== Description
// parsing process info
//
//== Run
// $ swift ./process-info.swift
//
//== Compile
// $ swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) ./process-info.swift
//
//== Source
// http://stackoverflow.com/questions/24009050/how-do-i-access-program-arguments-in-swift
//
//== Author
// rimbaud1854
//
//== Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

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
