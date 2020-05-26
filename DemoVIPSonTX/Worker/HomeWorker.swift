//
//  HomeWorked.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol HomeWorkerType {
    func getAllData(with request: HomeModel.Request,
                    _ completionHandle: @escaping (HomeModel.Response) -> Void)
}

struct HomeWorker: HomeWorkerType {
    func getAllData(with request: HomeModel.Request,
                    _ completionHandle: @escaping (HomeModel.Response) -> Void) {
        
    }
}

