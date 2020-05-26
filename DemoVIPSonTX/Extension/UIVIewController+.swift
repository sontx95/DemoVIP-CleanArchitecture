//
//  UIVIewController+.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/26/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import UIKit

extension UIViewController {
    func showPopup(title: String = "Alert",
                   message: String,
                   completionHandle: @escaping () -> ()) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "OK",
                                      style: UIAlertAction.Style.default) { _ in
              completionHandle()
        })
        self.present(alert, animated: true, completion: nil)
    }
}
