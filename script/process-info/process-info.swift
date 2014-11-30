#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// process-info.swift
// released: Sun Nov 30 12:15:31 CET 2014
//++

// == Description
// parsing process info
//
// == Run
// $ swift ./process-info.swift
//
// == Compile
// $ swiftc ./process-info.swift -o process-info
//
// == Author
// rimbaud1854
//
// == Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

// Process is a Swift std lib Struct
for argument in Process.arguments {
	println(argument)
}

// old-school
import Foundation

let pi = NSProcessInfo()

println(pi.arguments)

