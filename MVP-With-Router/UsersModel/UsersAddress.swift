//
//  UsersAddress.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

class UsersAddress: Decodable {
    
    var street: String?
    var suite: String?
    var city: String?
    
    
    enum CodingKeys: String, CodingKey {
        
        case street = "street"
        case suite = "suite"
        case city = "city"
        
    }
}
