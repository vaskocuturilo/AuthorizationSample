//
//  ViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 15.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
import Firebase

fileprivate let AccessibilityRoot = Accessibility.Screen.Root.self
class ViewController: UIViewController {
    @IBOutlet weak var logInButton:UIButton!
    @IBOutlet weak var facebookLogin:UIButton!
    @IBOutlet weak var signUpButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setElementsDesign()
        view.accessibilityIdentifier = AccessibilityRoot.View
    }
    
    func setElementsDesign(){
        Utilities.styleFilledButton(logInButton)
        Utilities.styleFilledButton(facebookLogin)
        Utilities.styleHollowButton(signUpButton)
        logInButton.accessibilityIdentifier = AccessibilityRoot.LoginButton
        signUpButton.accessibilityIdentifier = AccessibilityRoot.SignUpButton
        facebookLogin.accessibilityIdentifier = AccessibilityRoot.FacebookButton
    }
    
    func transitionToHome() {
        let homeController = storyboard?.instantiateViewController(identifier: Constans.StoryBoard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeController
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func facebookLoginMethod(){
        let loginManager = LoginManager()
        loginManager.logIn(permissions: ["public_profile","email"], from: self) { (result, error) in
            
            if let error = error {
                print(error.localizedDescription)
                return
            }
            
            guard let accessToken = AccessToken.current else {
                print("Failed to get access token")
                return
            }
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            Auth.auth().signIn(with: credential) { (user, error) in
                if let error = error {
                    print(error.localizedDescription)
                    return
                }
                self.transitionToHome()
            }
        }
    }
}


