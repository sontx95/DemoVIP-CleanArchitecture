//
//  LoginPresenter.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol LoginPresenterType {
    func handleResult(with response: LoginModel.Response)
}

struct LoginPresenter: LoginPresenterType {
    weak var view: LoginDisplayLogic?
    
    func handleResult(with response: LoginModel.Response) {
        let viewModel = LoginModel.ViewModel(response: response)
        view?.showPopup(with: viewModel.message)
    }
}
