#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// cocoa.swift
// released: Mon Dec  1 11:29:56 CET 2014
//++

//== Description
// some cocoa interaction
//
//== Run
// $ swift ./cocoa.swift
//
//== Compile
// $ swiftc ./cocoa.swift -o cocoa
//
//== Source
//
//== Author
// rimbaud1854
//
//== Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

import Cocoa

var synth     = NSSpeechSynthesizer()
let jellyTime = "Do the peanut butter jelly, peanut butter jelly, Peanut butter jelly with a baseball bat"

synth.startSpeakingString(jellyTime)

NSRunLoop.currentRunLoop().runUntilDate(NSDate.distantFuture() as NSDate)
