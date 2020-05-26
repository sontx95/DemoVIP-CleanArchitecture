//
//  LoginModel.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

enum LoginModel {
    struct Request {
        let userName: String
        let password: String
    }
    
    struct Response {
        let responseObject: AnyObject?
        let error: Error?
        let message: String?
    }
    
    struct ViewModel {
        let message: String
        
        init(response: Response) {
            self.message = response.message ?? ""
        }
    }
}
