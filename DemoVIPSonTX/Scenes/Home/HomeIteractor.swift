//
//  HomeIteractor.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol HomeIteractorType {
    func doSomeThing()
}

struct HomeIteractor: HomeIteractorType {
    let worked: HomeWorkerType
    let presenter: HomePresenterType
    
    func doSomeThing() {
    }
}
