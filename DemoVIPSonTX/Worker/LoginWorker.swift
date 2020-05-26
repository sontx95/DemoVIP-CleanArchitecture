//
//  LoginWorker.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol LoginWorkerType {
    func performLogin(model: LoginModel.Request,
                      _ completionHandle: @escaping (LoginModel.Response) -> Void)
}

struct LoginWorker: LoginWorkerType {
    func performLogin(model: LoginModel.Request,
                      _ completionHandle: @escaping (LoginModel.Response) -> Void) {
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            Thread.sleep(forTimeInterval: 1)
            let response = LoginModel.Response(responseObject: nil,
                                               error: nil,
                                               message: "Login successful")
            DispatchQueue.main.async {
                completionHandle(response)
            }
        }
    }
}
