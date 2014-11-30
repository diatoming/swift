// Playground - noun: a place where people can play

import Cocoa

let reader = NSSpeechSynthesizer()
let msg = "This is a test!"

reader.startSpeakingString(msg)
