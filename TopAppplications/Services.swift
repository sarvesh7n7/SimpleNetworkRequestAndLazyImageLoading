//
//  Services.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/2/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Services {

    func sendNetworkRequestWithURL(url:String) {
        Alamofire.request(.GET, url)
            .responseJSON { response in
                if let responseValue = response.result.value {
                    //print("JSON: \(responseValue)")
                    let somevar = JSON(responseValue)
                    let feedsmodel = FeedsModel(feedsJson: somevar["feed"])
                    print(feedsmodel)
                }
        }
    }
}