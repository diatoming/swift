//
//  AppDelegate.swift
//  PaintCode
//
//  Created by Diego Herrera on 18/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

  func applicationWillFinishLaunching(aNotification: NSNotification) {
    window.center()
  }

}

