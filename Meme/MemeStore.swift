//
//  Memes.swift
//  Meme
//
//  Created by Martin Kelly on 31/08/2015.
//  Copyright (c) 2015 Scriptable. All rights reserved.
//

import Foundation

class MemeStore {
    static let sharedInstance = MemeStore()
    var memes:[Meme] = [Meme]()
}
