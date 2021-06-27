//
//  UsersModel.swift
//  MVP-With-Router
//
//  Created by Amin  on 6/27/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation

class UsersModel: Decodable {
    
    var name: String?
    var username: String?
    var email: String?
    var phone: String?
    var address: UsersAddress?
    
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case username = "username"
        case email = "email"
        case phone = "phone"
        case address = "address"
        
    }
}
