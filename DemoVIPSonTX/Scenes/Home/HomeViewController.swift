//
//  HomeViewController.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

protocol HomeDisplayLogic: class {
    func performUpdateUI(model: HomeModel.ViewModel)
}

final class HomeViewController: UIViewController {
    // MARK: IB Outlets
    
    // MARK: - Property
    var iteractor: HomeIteractorType!
    var router: HomeRouterType!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Setup UI
    private func setupUI() {
        view.backgroundColor = .green
    }
}

extension HomeViewController: HomeDisplayLogic {
    func performUpdateUI(model: HomeModel.ViewModel) {
        
    }
}
