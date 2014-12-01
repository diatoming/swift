#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// test.swift
// released: Mon Dec  1 21:39:04 CET 2014
//++

//== Description
// compile script with Foundation framework
//
//== Run
// $ swift ./test.swift
//
//== Compile
// $ swiftc -sdk $(xcrun --show-sdk-path --sdk macosx) ./test.swift
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

let msg = "This is a test!"

println(msg)

