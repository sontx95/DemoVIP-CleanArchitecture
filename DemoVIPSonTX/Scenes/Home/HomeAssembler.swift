//
//  HomeAssembler.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol HomeAssembler {
    func resolve(navigationController: UINavigationController) -> HomeViewController
    func resolve(navigationController: UINavigationController) -> HomeRouterType
    func resolve(viewController: HomeViewController) -> HomeIteractorType
    func resolve(viewController: HomeViewController) -> HomePresenterType
}

extension HomeAssembler {
    func resolve(navigationController: UINavigationController) -> HomeViewController {
        let vc = HomeViewController(nibName: "Home", bundle: nil)
        vc.iteractor = resolve(viewController: vc)
        vc.router = resolve(navigationController: navigationController)
        return vc
    }
    
    func resolve(viewController: HomeViewController) -> HomePresenterType {
        return HomePresenter(homeDisplayLogic: viewController)
    }
}

extension HomeAssembler where Self: DefaultAssembler {
    func resolve(navigationController: UINavigationController) -> HomeRouterType {
        return HomeRouter(assembler: self, navigation: navigationController)
    }
    
    func resolve(viewController: HomeViewController) -> HomeIteractorType {
        return HomeIteractor(
            worked: resolve(),
            presenter: resolve(viewController: viewController))
    }
}

