//
//  RegisterWorker.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol RegisterWorkerType {
    func performRegister(request: RegisterModel.Request,
                         _ completionHandle: @escaping (RegisterModel.Response) -> Void)
}

struct RegisterWorker: RegisterWorkerType {
    func performRegister(request: RegisterModel.Request,
                         _ completionHandle: @escaping (RegisterModel.Response) -> Void) {
        let queue = DispatchQueue.global(qos: .utility)
        queue.async {
            Thread.sleep(forTimeInterval: 1)
            let response = RegisterModel.Response(
                message: "HjHj"
            )
            DispatchQueue.main.async {
                completionHandle(response)
            }
        }
    }
}
