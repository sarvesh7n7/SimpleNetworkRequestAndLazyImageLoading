//
//  ViewController.swift
//  TopAppplications
//
//  Created by Sarvesh Joshi on 11/2/15.
//  Copyright © 2015 SelfWork. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let services = Services()
        services.getMostPopularApps()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

