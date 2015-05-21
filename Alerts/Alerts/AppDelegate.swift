//
//  AppDelegate.swift
//  Alerts
//
//  Created by Diego Herrera on 22/03/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

}

extension AppDelegate {

  @IBAction func showAlert(sender: AnyObject) {
    let alert : NSAlert = NSAlert()

    alert.messageText = "This is a alert message."
    alert.informativeText = "This is a alert informative text."

    alert.beginSheetModalForWindow(window,
      completionHandler: { (code:NSModalResponse) -> Void in
      println("Something happened! Handling alert!")
    })
  }

}

extension AppDelegate: NSApplicationDelegate {

  func applicationWillFinishLaunching(aNotification: NSNotification) {
    window.center()
  }

}

