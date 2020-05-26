//
//  LoginIteractor.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol LoginIteractorType {
    func excuteLogin(userName: String, password: String)
}

struct LoginIteractor: LoginIteractorType {
    let worked: LoginWorkerType
    let presenter: LoginPresenterType
    
    func excuteLogin(userName: String, password: String) {
        let request = LoginModel.Request(
            userName: userName,
            password: password
        )
        worked.performLogin(model: request) { response in
            self.presenter.handleResult(with: response)
        }
    }
}
