//
//  RegisterAssembler.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol RegisterAssembler {
    func resolve(navigation: UINavigationController) -> RegisterViewController
    func resolve(navigation: UINavigationController) -> RegisterRouterType
    func resolve(viewController: RegisterViewController) -> RegisterIteractorType
    func resolve(viewController: RegisterViewController) -> RegisterPresenterType
}

extension RegisterAssembler {
    func resolve(navigation: UINavigationController) -> RegisterViewController {
        let vc = RegisterViewController(nibName: "Register", bundle: nil)
        vc.iteractor = resolve(viewController: vc)
        vc.router = resolve(navigation: navigation)
        return vc
    }
    
    func resolve(viewController: RegisterViewController) -> RegisterPresenterType {
        return RegisterPresenter(view: viewController)
    }
}

extension RegisterAssembler where Self: DefaultAssembler {
    func resolve(navigation: UINavigationController) -> RegisterRouterType {
        return RegisterRouter(assembler: self, navigation: navigation)
    }
    
    func resolve(viewController: RegisterViewController) -> RegisterIteractorType {
        return RegisterIteractor(worker: resolve(),
                                 presenter: resolve(viewController: viewController))
    }
}
