//
//  Services+PopularApps.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation

extension Services: FeedsServiceProtocol {
    func getMostPopularApps() {
        //some code to do the network requests. 
        let requestURL = "http://phobos.apple.com/WebObjects/MZStoreServices.woa/ws/RSS/toppaidapplications/limit=10/json"
        sendNetworkRequestWithURL(requestURL)
    }
}