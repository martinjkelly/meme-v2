//
//  DetailViewController.swift
//  Meme
//
//  Created by Martin Kelly on 13/09/2015.
//  Copyright (c) 2015 Scriptable. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    var meme:Meme?
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let memeImage = meme?.memeImage {
            memeImageView.image = memeImage
        }
    }
    
    @IBAction func editMeme(sender: UIBarButtonItem) {
        
        
    
    }
    
    @IBAction func deleteMeme(sender: UIBarButtonItem) {
        
        
        
    }
    
}
