//
//  main.swift
//  tempfolder
//
//  Created by Diego Herrera on 13/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa

let tempfolder = RCTempFolder().tempFolderURL()
NSWorkspace.sharedWorkspace().openURL(tempfolder)

