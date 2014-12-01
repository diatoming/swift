#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// hello.swift
// released: Mon Dec  1 21:33:32 CET 2014
//++

//== Description
// 'hello world' tools: interpreted and compiled
//
//== Run
// $ swift ./hello.swift
//
//== Compile
// $ swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) ./hello.swift
//
//== Source
//
//== Author
// rimbaud1854
//
//== Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

import Foundation

let msg = "Hello, world! Welcome to Swift scripting!"

println(msg)
NSLog(msg)
