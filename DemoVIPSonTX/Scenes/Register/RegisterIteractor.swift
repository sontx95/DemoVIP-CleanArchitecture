//
//  RegisterIteractor.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol RegisterIteractorType {
    func excuteRegister(userName: String, password: String)
}

struct RegisterIteractor: RegisterIteractorType {
    let worker: RegisterWorkerType
    let presenter: RegisterPresenterType
    
    func excuteRegister(userName: String, password: String) {
        let request = RegisterModel.Request(
            userName: userName,
            password: password
        )
        worker.performRegister(request: request) { response in
            self.presenter.handleRegisterResult(with: response)
        }
    }
}

