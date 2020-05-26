//
//  LoginAssembler.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol LoginAssembler {
    func resolve(navigation: UINavigationController) -> LoginViewController
    func resolve(navigation: UINavigationController) -> LoginRouterType
    func resolve(viewController: LoginViewController) -> LoginIteractorType
    func resolve(viewController: LoginViewController) -> LoginPresenterType
}

extension LoginAssembler {
    func resolve(navigation: UINavigationController) -> LoginViewController {
        let vc = LoginViewController(nibName: "LoginView", bundle: nil)
        vc.router = resolve(navigation: navigation)
        vc.iteractor = resolve(viewController: vc)
        return vc
    }
    
    func resolve(viewController: LoginViewController) -> LoginPresenterType {
        return LoginPresenter(view: viewController)
    }
}

extension LoginAssembler where Self: DefaultAssembler {
    func resolve(navigation: UINavigationController) -> LoginRouterType {
        return LoginRouter(assembler: self, navigation: navigation)
    }
    
    func resolve(viewController: LoginViewController) -> LoginIteractorType {
        return LoginIteractor(
            worked: resolve(),
            presenter: resolve(viewController: viewController))
    }
}
