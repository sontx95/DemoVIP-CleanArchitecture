//
//  WorkerAssembler.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol WorkerAssembler {
    func resolve() -> RegisterWorkerType
    func resolve() -> LoginWorkerType
    func resolve() -> HomeWorkerType
}

extension WorkerAssembler {
    func resolve() -> RegisterWorkerType {
        return RegisterWorker()
    }
    
    func resolve() -> LoginWorkerType {
        return LoginWorker()
    }
    
    func resolve() -> HomeWorkerType {
        return HomeWorker()
    }
}
