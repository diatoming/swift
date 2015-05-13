//
//  main.swift
//  cachefolder
//
//  Created by Diego Herrera on 13/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

let cacheFolderURL = RCCacheFolder().cacheFolderURL()
NSWorkspace.sharedWorkspace().openURL(cacheFolderURL)

