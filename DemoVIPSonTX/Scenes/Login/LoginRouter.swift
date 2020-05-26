//
//  LoginRouter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol LoginRouterType {
    func toHome()
    func toRegister()
}

struct LoginRouter: LoginRouterType {
    unowned let assembler: DefaultAssembler
    unowned let navigation: UINavigationController
    
    func toHome() {
        let nav = UINavigationController()
        let vc: HomeViewController = assembler.resolve(navigationController: nav)
        nav.viewControllers.append(vc)
        guard let window = (UIApplication.shared.delegate as! AppDelegate).window else {
            return
        }
        window.rootViewController = nav
        window.makeKeyAndVisible()
    }
    
    func toRegister() {
        let vc: RegisterViewController = assembler.resolve(navigation: navigation)
        navigation.pushViewController(vc, animated: true)
    }
}
