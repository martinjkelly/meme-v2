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

    @IBOutlet weak var tableView: UITableView!
    
    var memes:[Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("memeCell") as! UITableViewCell
        cell.textLabel?.text = "\(memes[indexPath.row].topString) ... \(memes[indexPath.row].bottomString)"
        cell.imageView?.image = memes[indexPath.row].memeImage
        return cell
    }
    
    @IBAction func createMeme(sender: UIBarButtonItem) {
        performSegueWithIdentifier("createMeme", sender: self)
    }
}