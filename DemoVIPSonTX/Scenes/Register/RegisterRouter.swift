//
//  RegisterRouter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol RegisterRouterType {
    func toLogin()
}

struct RegisterRouter: RegisterRouterType {
    unowned let assembler: DefaultAssembler
    unowned let navigation: UINavigationController
    
    func toLogin() {
        navigation.popViewController(animated: true)
    }
}
