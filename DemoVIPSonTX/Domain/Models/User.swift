//
//  User.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

struct User {
    enum Gender: String {
        case male = "Male"
        case famale = "Female"
    }
    
    let userName: String
    let age: Int16
    let address: String
    let phoneNumber: String
    let gender: Gender
}
