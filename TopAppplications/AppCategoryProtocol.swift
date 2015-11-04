//
//  AppCategoryProtocol.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/3/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import Foundation

protocol AppCategory {
    var id: String { get }
    var term: String { get }
    var label: String { get }
}