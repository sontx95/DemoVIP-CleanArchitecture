//
//  RegisterViewController.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol RegisterDisplayLogicType: class {
    func updateRegisterResult(with viewModel: RegisterModel.ViewModel)
}

final class RegisterViewController: UIViewController {
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var accountReady: UIButton!
    
    // MARK: - Property
    var router: RegisterRouterType!
    var iteractor: RegisterIteractorType!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Actions
    @IBAction func didSelectRegister(_ sender: Any) {
        iteractor.excuteRegister(
            userName: userNameTextField.text ?? "",
            password: passwordTextField.text ?? "")
    }
    
    @IBAction func backToLogin(_ sender: Any) {
        router.toLogin()
    }
}

extension RegisterViewController: RegisterDisplayLogicType {
    func updateRegisterResult(with viewModel: RegisterModel.ViewModel) {
        // do some thing
    }
}
