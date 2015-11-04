//
//  FeedsProtocol.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation

protocol Feed {
    var title: String {get}
    var author: String { get }
    var entries: [AppDetails] { get }
}