//
//  UIViewController+Ext.swift
//  GithubFollowers
//
//  Created by Shreyas Sahoo on 02/08/24.
//

import UIKit

extension UIViewController {
    
    func presentGFAlertOnMainThread(title: String, message: String,buttonTitle: String){
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
    
}
