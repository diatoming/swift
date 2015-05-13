//
//  main.swift
//  cachefolder
//
//  Created by Diego Herrera on 13/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

let CACHE_FOLDER_INDEX = 0

let fileManager = NSFileManager.defaultManager()
let cacheFolderURL = fileManager.URLsForDirectory(NSSearchPathDirectory.CachesDirectory, inDomains: NSSearchPathDomainMask.UserDomainMask)[CACHE_FOLDER_INDEX] as! NSURL

NSWorkspace.sharedWorkspace().openURL(cacheFolderURL)
