#!/usr/bin/env swift

// three ways to retrieve process info:

// the swiftest! Process from std lib
let args = Process.arguments
args.map{println($0)}

// the swifter: NSProcessInfo included in Foundation
import Foundation

let pi = NSProcessInfo()
pi.arguments.map{println($0)}
