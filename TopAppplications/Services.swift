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

    var onCompletion: ((JSON) -> ())?

    //for now handling only success cases.
    var onSuccess: ((JSON) -> ())?
    var onFailue: ((JSON) -> ())?
    
    func sendNetworkRequestWithURL(url:String) {
        Alamofire.request(.GET, url)
            .responseJSON { response in
                if let responseValue = response.result.value {
                    let jsonResponse = JSON(responseValue)
                    print("\(__FILE__) \(jsonResponse)")
                    self.onCompletion?(jsonResponse)

                }
        }
    }
}