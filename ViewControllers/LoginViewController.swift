//
//  LoginViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 16.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var loginButton:UIButton!
    @IBOutlet weak var clickLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setElements()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.handleTap))
        clickLabel.isUserInteractionEnabled = true
        clickLabel.addGestureRecognizer(tap)
      
    }

    
    func setElements() {
        Utilities.styleTextField(emailField)
        Utilities.styleTextField(passwordField)
        
        Utilities.styleFilledButton(loginButton)
    }
    
    @objc func handleTap(sender:UITapGestureRecognizer) {
       
        guard let viewController = storyboard?.instantiateViewController(identifier: "register") as? SignUpViewController else {
                    return
                }
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}
