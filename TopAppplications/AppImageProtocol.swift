//
//  AppImage.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/4/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation
import UIKit
protocol AppImage {

    var appImage: UIImage {get set}
    //var name: String { get }
    var imageURL: String { get }
    var isDownloaded: Bool { get }
    //var onDownload: (() -> ()) { get set }
    func downloadImage(completion: () -> ())
}