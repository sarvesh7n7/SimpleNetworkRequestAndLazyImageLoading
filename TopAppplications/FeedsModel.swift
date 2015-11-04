//
//  FeedsModel.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import SwiftyJSON

class FeedsModel: Feed {
    var title: String
    var author: String
    var entries: [AppDetails]

    init() {
        title = ""
        author = ""
        entries = []
    }

    convenience init(feedsJson: JSON) {
        self.init()
        if let title = feedsJson["title"]["label"].string {
            self.title = title
        }
        if let author = feedsJson["author"]["name"]["label"].string {
            self.author = author
        }
        if let entries = feedsJson["entry"].array {
            self.entries = []
            for currentEntry in entries {
                let appDetails = FeedsManager.getAppDetailsInstance(currentEntry)
                self.entries.append(appDetails)
            }
        }
    }

}