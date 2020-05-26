//
//  HomeRouter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol HomeRouterType {
    func toSomeWhere()
}

struct HomeRouter: HomeRouterType {
    unowned let assembler: DefaultAssembler
    unowned let navigation: UINavigationController
    
    func toSomeWhere() {
    }
}

