//
//  AppDelegate.swift
//  XMLParser
//
//  Created by Diego Herrera on 20/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa
import SWXMLHash

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

}

extension AppDelegate {

  func applicationWillFinishLaunching(aNotification: NSNotification) {
    window.center()
    readXML()
  }

  func readXML() {
    let xmlURL = NSBundle.mainBundle().URLForResource("test", withExtension: "xml")
    let xmlContent = NSString(contentsOfURL: xmlURL!, encoding: NSUTF8StringEncoding, error: nil)!
    let xml = SWXMLHash.parse(xmlContent as String)
    println(xml)
    println(xml["root"]["header"]["title"].element?.text)
  }

}

