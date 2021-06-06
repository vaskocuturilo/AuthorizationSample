//
//  LoginViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 16.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit
import Firebase
import FacebookCore
import FacebookLogin

fileprivate let AccessabilityRoot = Accessibility.Screen.Login.self
class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var loginButton:UIButton!
    @IBOutlet weak var clickLabel:UILabel!
    @IBOutlet weak var errorLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.accessibilityIdentifier = AccessabilityRoot.View
        setElements()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.handleTap))
        clickLabel.isUserInteractionEnabled = true
        clickLabel.addGestureRecognizer(tap)
        errorLabel.alpha = 0
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
    
    @IBAction func loginTapped() {
        
        let email = emailField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
            } else {
                
                self.transitionToHome()
            }
        }
    }
    
    func transitionToHome(){
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
}
