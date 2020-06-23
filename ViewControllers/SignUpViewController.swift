//
//  SignUpViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 16.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var nameField:UITextField!
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var retypePassword:UITextField!
    @IBOutlet weak var registerButton:UIButton!
    @IBOutlet weak var clickLabel:UILabel!
    @IBOutlet weak var errorLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setElements()
        
        errorLabel.alpha = 0
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(SignUpViewController.handleTap))
        clickLabel.isUserInteractionEnabled = true
        clickLabel.addGestureRecognizer(tap)
    }
    
    
    func validateFields() -> String? {
        
        if nameField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please, fill in all fields."
        }
        
        let cleanPassword = passwordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let retypeClenPassword = retypePassword.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanPassword) == false ||
            Utilities.isPasswordValid(retypeClenPassword) == false {
            
            return "Please check your password."
        }
        
        return nil
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
    
    @IBAction func signUpTapped() {
        
        let error = validateFields()
        
        if error != nil {
            showError(error!)
        } else {
            let name = nameField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let email = emailField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            let password = passwordField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            
            Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
                if err != nil {
                    self.errorLabel.text = err?.localizedDescription
                } else {
                    let dataBase = Firestore.firestore()
                    dataBase.collection("users").addDocument(data: ["name":name, "uid":result!.user.uid]) { (error) in
                        if error != nil {
                            self.errorLabel.text = error?.localizedDescription
                        }
                    }
                }
                self.transitionToHome()
            }
        }
        
    }
    
    func showError(_ message:String){
        errorLabel.text = message
        errorLabel.alpha = 1
        
    }
    
    func transitionToHome(){
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
    
}
