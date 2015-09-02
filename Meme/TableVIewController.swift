//
//  TableVIewController.swift
//  Meme
//
//  Created by Martin Kelly on 30/08/2015.
//  Copyright (c) 2015 Scriptable. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var memes:[Meme]!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let memes = MemeStore.sharedInstance.memes
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("memeCell") as! UITableViewCell
        cell.detailTextLabel?.text = memes[indexPath.row].topString
        return cell
    }
    
    @IBAction func createMeme(sender: UIBarButtonItem) {
        performSegueWithIdentifier("createMeme", sender: self)
    }
}