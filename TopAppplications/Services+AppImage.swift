//
//  Services+AppImage.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/4/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//
import UIKit

import Alamofire

extension Services: ImageDownloadProtocol {

    func downloadImage(url:String) {
        Alamofire.request(.GET, url)
            .response() { _,_,data,_ in
                if let responseValue = data {
                    self.onCompletion?(responseValue)
                }
        }
    }
}