//
//  WindowController.swift
//  TaoReader
//
//  Created by Diego Herrera on 20/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

class WindowController: NSWindowController {

  let taoReader = TaoReader()
  @IBOutlet weak var popUpButton: NSPopUpButton!
  @IBOutlet var textView: NSTextView!

}

extension WindowController {

  override func awakeFromNib() {
    window?.center()
    popUpButton.removeAllItems()
    populatePopUpButton()
  }

  func populatePopUpButton() {
    let taoSectionList = (1...81).map{String($0)}

    popUpButton.addItemsWithTitles(taoSectionList)
  }

}

extension WindowController {
  
  @IBAction func readSection(sender: AnyObject) {
    textView.string = taoReader.bookSection(popUpButton.titleOfSelectedItem!)
    textView.alignment = NSTextAlignment.CenterTextAlignment
  }

}

