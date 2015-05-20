//
//  AppDelegate.swift
//  CSVPods
//
//  Created by Diego Herrera on 19/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa
import CSwiftV

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!

}

extension AppDelegate {

  func applicationWillFinishLaunching(aNotification: NSNotification) {
    window.center()
    usePod()
  }

}

extension AppDelegate {

  private func usePod() -> () {
    let inputString = "Year,Make,Model,Description,Price\r\n1997,Ford,E350,descrition,3000.00\r\n1999,Chevy,Venture,another description,4900.00\r\n"

    let csv = CSwiftV(String: inputString)
    let rows = csv.rows
    let headers = csv.headers
    let keyedRows = csv.keyedRows

    println(csv.rows[0])
    println(csv.headers)
    println(keyedRows!)
  }

}

