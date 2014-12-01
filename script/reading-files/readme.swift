#!/usr/bin/env swift
//--
// Have faith in the way things are.
//
// readme.swift
// released: Mon Dec  1 10:32:09 CET 2014
//++

//== Description
// a simple file reader
//
//== Run
// $ swift ./readme.swift
//
//== Compile
// $ swiftc ./readme.swift -o readme
//
//== Source
// http://dev.iachieved.it/iachievedit/?p=336
// http://stackoverflow.com/questions/26538375/read-file-in-swift-ios-playground
//== Author
// rimbaud1854
//
//== Copyright
// Copyright (c) 2014 rimbaudcode
// Licensed under GPLv3+. No warranty provided.

import Foundation

// from the cli
 
let filenames = Process.arguments
 
for filename in filenames {
  var fileContents:String? = String(contentsOfFile:filename, 
    encoding:NSUTF8StringEncoding, 
		error:nil)

  if let contents  = fileContents {
    var whitespace = NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet
		var newline    = NSCharacterSet.newlineCharacterSet() as NSCharacterSet

		var lines:Array = contents.componentsSeparatedByCharactersInSet(newline)
		var words:Array = contents.componentsSeparatedByCharactersInSet(whitespace)
    
		var numChars = countElements(contents)
		var numLines = lines.count - 1
		var numWords = words.count - 1

		println("\t\(numLines)\t\(numWords)\t\(numChars)\t\(filename)")
	} else {
		println("readme.swift: \(filename):  No such file")
	}
}


// from the tool

let filepath = "./declaration.txt"

if let fileContent:String? = String(contentsOfFile:filepath, 
  encoding:NSUTF8StringEncoding, 
	error:nil) {
    println(fileContent!)
	} else {
		println("error reading file")
}

