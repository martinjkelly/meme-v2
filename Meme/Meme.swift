//
//  Meme.swift
//  Meme
//
//  Created by Martin Kelly on 27/08/2015.
//  Copyright (c) 2015 Scriptable. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topString:String
    var bottomString:String
    var originalImage:UIImage!
    var memeImage:UIImage!
}

func ==(lhs: Meme, rhs: Meme) -> Bool {
    return lhs.topString == rhs.topString && lhs.bottomString == rhs.topString && lhs.originalImage == rhs.originalImage && lhs.memeImage == rhs.memeImage
}