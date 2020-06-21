//
//  SignUpViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 16.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameField:UITextField!
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var retypePassword:UITextField!
    @IBOutlet weak var registerButton:UIButton!
    @IBOutlet weak var clickLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setElements()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.handleTap))
               clickLabel.isUserInteractionEnabled = true
               clickLabel.addGestureRecognizer(tap)
    }
    
    
    
    func setElements(){
        
        Utilities.styleTextField(nameField)
        Utilities.styleTextField(emailField)
        Utilities.styleTextField(passwordField)
        Utilities.styleTextField(retypePassword)
        
        Utilities.styleFilledButton(registerButton)
    }
    
    @objc func handleTap(sender:UITapGestureRecognizer) {
       
        guard let viewController = storyboard?.instantiateViewController(identifier: "login") as? LoginViewController else {
                    return
                }
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}
