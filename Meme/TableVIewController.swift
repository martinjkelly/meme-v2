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
    let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

        tableView.separatorColor = UIColor.clearColor()
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
    }
    
    override func viewWillAppear(animated: Bool) {
        memes = appDelegate.memes
        tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("memeCell") as! TableViewCell
        cell.memeText?.text = "\(memes[indexPath.row].topString) ... \(memes[indexPath.row].bottomString)"
        
        if let imageView = cell.memeImageView {
            imageView.image = memes[indexPath.row].memeImage
            imageView.backgroundColor = UIColor.grayColor()
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var meme = memes[indexPath.row]
        let VC = storyboard!.instantiateViewControllerWithIdentifier("MemeDetailViewController") as! DetailViewController
        VC.memeIndex = appDelegate.findIndexOfMeme(meme)
        navigationController?.pushViewController(VC, animated: true)
    }
    
    @IBAction func createMeme(sender: UIBarButtonItem) {
        performSegueWithIdentifier("createMeme", sender: self)
    }
}