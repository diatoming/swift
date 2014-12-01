// Playground - noun: a place where people can play

import Cocoa

var synth     = NSSpeechSynthesizer()
let jellyTime = "Do the peanut butter jelly, peanut butter jelly, Peanut butter jelly with a baseball bat"
synth.startSpeakingString(jellyTime)
println(synth.speaking)

NSRunLoop.currentRunLoop().runUntilDate(NSDate.distantFuture() as NSDate)
