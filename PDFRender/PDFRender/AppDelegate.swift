//
//  AppDelegate.swift
//  PDFRender
//
//  Created by Diego Herrera on 20/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa
import Quartz

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  @IBOutlet weak var window: NSWindow!
  @IBOutlet weak var pdfView: PDFView!

}

extension AppDelegate {

  func applicationWillFinishLaunching(aNotification: NSNotification) {

    let point = NSMakePoint(0.0, pdfView.bounds.size.height)
    let pdf = NSBundle.mainBundle().URLForResource("pdf-sample", withExtension: "pdf")
    let pdfDoc = PDFDocument(URL: pdf)

    pdfView.setDocument(pdfDoc!)
    pdfView.setAutoScales(true)
    pdfView.documentView().scrollPoint(point)

    window.center()

  }

}

