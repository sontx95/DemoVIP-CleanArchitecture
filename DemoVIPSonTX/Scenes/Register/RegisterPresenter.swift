//
//  RegisterPresenter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol RegisterPresenterType {
    func handleRegisterResult(with response: RegisterModel.Response)
}

struct RegisterPresenter: RegisterPresenterType {
    weak var view: RegisterDisplayLogicType?
    
    func handleRegisterResult(with response: RegisterModel.Response) {
        let viewModel = RegisterModel.ViewModel(response: response)
        view?.updateRegisterResult(with: viewModel)
    }
}
