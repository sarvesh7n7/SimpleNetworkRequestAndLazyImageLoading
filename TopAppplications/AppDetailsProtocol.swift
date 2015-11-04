//
//  EntryProtocol.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation

protocol AppDetails {
    var name: String { get }
    var title: String { get }
    var imageURL: String { get }
    var summary: String { get }
    var price: String { get }
    var rights: String { get }
    var artist: String { get }
    var releaseDate: String { get }
    var appCategory: AppCategory { get }


}