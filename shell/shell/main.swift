//
//  main.swift
//  shell
//
//  Created by Diego Herrera on 21/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Foundation

// run some commands and print the result
let result = run("echo 'this is a test'").read()
println(result)

// pipe commands
run("echo piped to the next command") |> run("wc -w") |>> standardoutput

// use the $() command for in-line parameters
print( "The time and date is " + $("date -u") )

