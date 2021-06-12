//
//  LoginPage.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 12.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

struct LoginPage: Page {
    let application: XCUIApplication
    
    private enum Identifiers {
        static let email = "Login.EmailField"
        static let password = "Login.PasswordField"
        static let loginButton = "Login.LoginButton"
    }
    
    func typeEmail(userEmail: String) -> Self {
        let email = application.textFields[Identifiers.email]
        email.tap()
        email.typeText(userEmail)
        
        return self
    }
    
    func tapLogin() -> MessagePage {
        application.buttons[Identifiers.loginButton].tap()
        
        return MessagePage(application: application)
    }
    
    func typePassword(userpassword: String) -> Self {
        let pasword = application.secureTextFields[Identifiers.password]
        pasword.tap()
        pasword.typeText(userpassword)
        
        return self
    }
}


