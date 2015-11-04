//
//  AppCategoryModel.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import SwiftyJSON

class AppCategoryModel: AppCategory {
    var id: String
    var term: String
    var label: String

    init() {
        id = ""
        term = ""
        label = ""
    }

     convenience init(appCategoryJson: JSON) {
        self.init()
        if let id = appCategoryJson["im:id"].string {
            self.id = id
        }
        if let term = appCategoryJson["term"].string {
            self.term = term
        }
        if let label = appCategoryJson["label"].string {
            self.label = label
        }
    }
}
