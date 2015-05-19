//
//  RCWindowController.swift
//  BlackBackground
//
//  Created by Diego Herrera on 19/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

class RCWindowController: NSWindowController {

  let kRCWindowXOrigin: CGFloat = 0.0
  let kRCWindowYOrigin: CGFloat = 0.0

  let kRCWindowAnimationDuration = 2.0
  let kRCWindowInitialAlphaValue: CGFloat = 0.0
  let kRCWindowFinalAlphaValue: CGFloat = 1.0

  let kRCWindowPositionOnDesktopBelowIcons: Int = 0
  let kRCWindowPositionOnDesktopAboveIcons: Int = 1

}

extension RCWindowController {

  override func awakeFromNib() {
    setWindowProperties()
    setWindowPositionOnSpaces()
    setWindowPositionOnDestop()
    animateWindowDisplayAtLaunch()
    showMenuBar(true)
    resetOSXFinder(true)
  }

  private func setWindowProperties() -> () {
    window?.backgroundColor = NSColor.blackColor()
    window?.opaque = false
    window?.hasShadow = false
    window?.styleMask = NSBorderlessWindowMask // hide titlebar

    // get screen size and scale window to fit that size
    let screenFrameWidth = NSScreen.mainScreen()?.frame.size.width
    let screenFrameHeight = NSScreen.mainScreen()?.frame.size.width
    let screenFrame = NSMakeRect(kRCWindowXOrigin, kRCWindowYOrigin, screenFrameWidth!, screenFrameHeight!)
    window?.setFrame(screenFrame, display: true, animate: true)
  }

  private func setWindowPositionOnSpaces() -> () {
    window?.center()
    window?.collectionBehavior = NSWindowCollectionBehavior.CanJoinAllSpaces
  }

  private func setWindowPositionOnDestop() -> () {
    window?.level = Int(CGWindowLevelForKey(Int32(kCGDesktopIconWindowLevelKey)))
  }

  private func animateWindowDisplayAtLaunch() -> () {
    NSAnimationContext.beginGrouping()
    NSAnimationContext.currentContext().duration = kRCWindowAnimationDuration
    window?.alphaValue = kRCWindowInitialAlphaValue
    window?.animator().alphaValue = kRCWindowFinalAlphaValue
    NSAnimationContext.endGrouping()
  }

  private func showMenuBar(show:Bool) -> () {
    NSMenu.setMenuBarVisible(show)
  }

  private func resetOSXFinder(Bool) -> () {
    // to implement
  }

}

