//
//  AppImageModel.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/4/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import UIKit
import SwiftyJSON

class AppImageModel: AppImage {
    var appImage: UIImage
    var isDownloaded: Bool
    var imageURL: String

    var onDownload: (() -> ())?

    init () {
        appImage = UIImage(named: "appleLogo")!
        imageURL = ""
        isDownloaded = false
    }

    convenience init(imageURL: String) {
        self.init()
        self.imageURL = imageURL
    }

    func downloadImage(completion: (() -> ()) ) {
        let service = Services()
        service.downloadImage(imageURL)
        service.onCompletion = { (responseData) -> () in
            self.isDownloaded = true
            if let imageData  = responseData as? NSData {
                self.appImage = UIImage(data: imageData)!
                completion()
                //self.onDownload?()
            }
        }
    }

}