//
//  RCTempFolder.swift
//  tempfolder
//
//  Created by Diego Herrera on 13/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Foundation

struct RCTempFolder {
}

extension RCTempFolder {
  func tempFolderURL() -> NSURL {
    return NSURL.fileURLWithPath(NSTemporaryDirectory())!
  }
}

