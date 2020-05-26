//
//  HomePresenter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol HomePresenterType {
    func dataUser()
}

struct HomePresenter: HomePresenterType {
    weak var homeDisplayLogic: HomeDisplayLogic?
    
    func dataUser() {
    }
}
