//
//  ViewController.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/2/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var feed: Feed?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100
        let feedsManager = FeedsManager()
        feedsManager.getMostPopularApps()
        feedsManager.onCompletion = { (loadedFeed) -> () in
            self.feed = loadedFeed
            self.tableView.reloadData()
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let count = feed?.entries.count {
            return count
        }
        return 0
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("appCell", forIndexPath: indexPath) as! AppTableViewCell
        cell.appTitleLabel.text = feed?.entries[indexPath.row].name
        cell.appArtistLabel.text = feed?.entries[indexPath.row].artist
        cell.appCategoryLabel.text = feed?.entries[indexPath.row].appCategory.label

        if let appImage = feed?.entries[indexPath.row].appImage {
            if !appImage.isDownloaded {
                cell.appImageView.image = appImage.appImage
                appImage.downloadImage({ () -> () in
                    cell.appImageView.image = appImage.appImage
                })
            }
            else {
                cell.appImageView.image = appImage.appImage
            }
        }


        return cell

    }
}

