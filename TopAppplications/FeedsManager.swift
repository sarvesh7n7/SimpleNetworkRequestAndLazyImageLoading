//
//  FeedsManager.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/4/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import SwiftyJSON

class FeedsManager {
    //I will manage all the objectcs and sending networks requests. anyone who wants feeds object feel free to approch me!

    private var services = Services()
    var onCompletion: ((Feed) -> ())?
    //var feedsInstance: Feed?

    func getMostPopularApps() {
        services.getMostPopularApps()
        services.onCompletion = { (responseValue) -> () in
            let jsonResponse = JSON(responseValue)
            let feedsInstance = FeedsManager.getFeedsInstance(jsonResponse["feed"])
            self.onCompletion?(feedsInstance)
        }
    }


    //initialize the instances of models
    class func getFeedsInstance(feedsJson: JSON) -> Feed {
        let feeds = FeedsModel(feedsJson: feedsJson)
        return feeds
    }

    class func getAppDetailsInstance(appsJson: JSON) -> AppDetails {
        let appDetails = AppDetailsModel(appDetailsJson: appsJson)
        return appDetails
    }

    class func getAppCategoryInstance(appCategoryJson: JSON) -> AppCategory {
        let appCategory = AppCategoryModel(appCategoryJson: appCategoryJson)
        return appCategory
    }

    class func getAppImageInstance(appImageURl: String) -> AppImage {
        let appImage = AppImageModel(imageURL: appImageURl)
        return appImage
    }


}