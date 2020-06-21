//
//  HomeViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 21.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel:UILabel!
    @IBOutlet weak var logoutButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

         setElements()
    }
     
    
    func setElements() {
        
           Utilities.styleFilledButton(logoutButton)
       }
}
