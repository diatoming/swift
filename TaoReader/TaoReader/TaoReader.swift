//
//  TaoReader.swift
//  TaoReader
//
//  Created by Diego Herrera on 20/05/15.
//  Copyright (c) 2015 rimbaudcode. All rights reserved.
//

import Cocoa
import SwiftyJSON

class TaoReader {

  let bookURL = NSBundle.mainBundle().URLForResource("tao", withExtension: "json")

}

extension TaoReader {

  func bookSection(section: String) -> String {
    let data = NSData(contentsOfURL: bookURL!)
    let json = JSON(data: data!)
    return json[section].string!
  }

}

