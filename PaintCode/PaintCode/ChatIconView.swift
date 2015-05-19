//
//  ChatIconView.swift
//  PaintCode
//
//  Created by Diego Herrera on 18/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

@IBDesignable
class ChatIconView: NSView {
  override func drawRect(dirtyRect: NSRect) {
    ChatIconStyleKit.drawChatIcon()
  }
}

