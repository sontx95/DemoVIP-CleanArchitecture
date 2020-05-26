//
//  RegisterModel.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

enum RegisterModel {
    struct Request {
        let userName: String
        let password: String
    }
    
    struct Response {
        var responseObject: AnyObject?
        var error: Error?
        var message: String?
    }
    
    struct ViewModel {
        let message: String
        
        init(response: Response) {
            self.message = response.message ?? ""
        }
    }
}
