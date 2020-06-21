//
//  ViewController.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 15.06.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var logInButton:UIButton!
    @IBOutlet weak var signUpButton:UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setElementsDesign()
        
    }
    
    
    func setElementsDesign(){

        Utilities.styleFilledButton(logInButton)
        Utilities.styleHollowButton(signUpButton)
    }
}


