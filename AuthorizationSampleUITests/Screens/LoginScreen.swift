//
//  LoginScreen.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.Login.self
class LoginScreen: AuthorizationPageObject {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var emailField :XCUIElement {
        return self.application.textFields[AccessabilityRoot.EmailField]
    }
    
    public var passwordField :XCUIElement {
        return self.application.secureTextFields[AccessabilityRoot.PasswordField]
    }
    
    public var loginButton :XCUIElement {
        return self.application.buttons[AccessabilityRoot.LoginButton]
    }
    
    private func enterEmail() {
        emailField.tap()
        emailField.typeText("tester@qa.team")
    }
    
    private func enterPassword() {
        passwordField.tap()
        passwordField.typeText("qwerty123456")
    }
    
    private func tapLoginButton() {
        loginButton.tap()
        
    }
    
    public func enterCredential() {
        enterEmail()
        enterPassword()
        tapLoginButton()
    }
}
