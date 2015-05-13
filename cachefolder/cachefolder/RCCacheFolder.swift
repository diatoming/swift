//
//  RCCacheFolder.swift
//  cachefolder
//
//  Created by Diego Herrera on 13/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Foundation

struct RCCacheFolder {
  let CACHE_FOLDER_INDEX = 0
}

extension RCCacheFolder {
  func cacheFolderURL() -> NSURL {
    let fileManager = NSFileManager.defaultManager()
    return fileManager.URLsForDirectory(NSSearchPathDirectory.CachesDirectory,
      inDomains: NSSearchPathDomainMask.UserDomainMask)[CACHE_FOLDER_INDEX] as! NSURL
  }
}

