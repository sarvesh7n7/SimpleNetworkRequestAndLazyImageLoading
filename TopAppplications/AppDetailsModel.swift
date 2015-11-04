//
//  AppDetailsModel.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import SwiftyJSON

class AppDetailsModel: AppDetails {
    var name: String
    var title: String
    var imageURL: String
    var summary: String
    var price: String
    var rights: String
    var artist: String
    var releaseDate: String
    var appCategory: AppCategory

    init() {
        name = ""
        title = ""
        imageURL = ""
        summary = ""
        price = ""
        rights =  ""
        artist =  ""
        releaseDate =  ""
        appCategory = AppCategoryModel()
    }
    convenience init(appDetailsJson: JSON) {
        self.init()
        if let name = appDetailsJson["im:name"]["label"].string {
            self.name = name
        }
        if let title = appDetailsJson["title"]["label"].string {
            self.title = title
        }
        if let imageURL = appDetailsJson["im:image"][0]["label"].string {
            self.imageURL = imageURL
        }
        if let summary = appDetailsJson["summary"]["label"].string {
            self.summary = summary
        }
        if let price = appDetailsJson["im:price"]["label"].string {
            self.price = price
        }
        if let rights = appDetailsJson["rights"]["label"].string {
            self.rights = rights
        }
        if let artist = appDetailsJson["im:artist"]["label"].string {
            self.artist = artist
        }
        if let releaseDate = appDetailsJson["im:releaseDate"]["label"].string {
            self.releaseDate = releaseDate
        }
        if let appCategoryDict = appDetailsJson["category"].dictionary {
            if let appCategory = appCategoryDict["attributes"] {
                self.appCategory = AppCategoryModel(appCategoryJson: appCategory)
            }

        }
    }
}