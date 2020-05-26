//
//  LoginViewController.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol LoginDisplayLogic: class {
    func perfomUpdateUI(_ viewModels: LoginModel.ViewModel)
    func showPopup(with message: String)
}

final class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!    
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Property
    var router: LoginRouterType!
    var iteractor: LoginIteractorType!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Setup UI
    private func setupUI () {
    }
    
    // MARK: - Action
    @IBAction func didSelectLogin(_ sender: Any) {
        iteractor.excuteLogin(
            userName: userNameTextField.text ?? "",
            password: passwordTextField.text ?? "")
    }
    
    @IBAction func didSelectRegister(_ sender: Any) {
        router.toRegister()
    }
    
}

extension LoginViewController: LoginDisplayLogic {
    func perfomUpdateUI(_ viewModels: LoginModel.ViewModel) {
    }
    
    func showPopup(with message: String) {
        self.showPopup(message: message) { [weak self] in
            self?.router.toHome()
        }
    }
}
