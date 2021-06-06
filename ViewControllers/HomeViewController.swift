//
//  HomeViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 21.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit
import Firebase
import FacebookLogin
import FacebookCore

fileprivate let AccessabilityRoot = Accessibility.Screen.Logout.self
class HomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel:UILabel!
    @IBOutlet weak var logoutButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.accessibilityIdentifier = AccessabilityRoot.View
        
        setElements()
    }
    
    func setElements() {
        
        Utilities.styleFilledButton(logoutButton)
        logoutButton.accessibilityIdentifier = AccessabilityRoot.LogoutButton
    }
    
    @IBAction func logoutTapped(_ sender: Any) {
        
        let refreshAlert = UIAlertController(title: "Confirm", message: "Are you sure you want logout?", preferredStyle: UIAlertController.Style.alert)
        
        refreshAlert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action: UIAlertAction!) in
            
            guard let mainController = self.storyboard?.instantiateViewController(withIdentifier: Constans.StoryBoard.mainViewController) as? ViewController else {
                return
            }
            self.logOut()
            self.navigationController?.pushViewController(mainController, animated: true)
            self.view.window?.rootViewController = mainController
            self.view.window?.makeKeyAndVisible()
            
        }))
        
        refreshAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    }
    
    func logOut(){
        
    }
}
