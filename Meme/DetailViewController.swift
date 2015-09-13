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
    
    var meme:Meme!
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if let memeImage = meme.memeImage {
            memeImageView.image = memeImage
        }
    }
    
    @IBAction func editMeme(sender: UIBarButtonItem) {
        
        let VC = storyboard!.instantiateViewControllerWithIdentifier("MemeEditorViewController") as! EditorViewController
        VC.meme = meme
        presentViewController(VC, animated: true, completion: nil)
    
    }
    
    @IBAction func deleteMeme(sender: UIBarButtonItem) {
        
        if let memeIndex = find(appDelegate.memes, meme) {
            appDelegate.memes.removeAtIndex(memeIndex)
        }
        
        navigationController?.popViewControllerAnimated(true)
        
    }
    
}
