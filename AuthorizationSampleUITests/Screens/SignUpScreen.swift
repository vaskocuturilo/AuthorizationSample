//
//  SignUpScreen.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest
import UIKit

fileprivate let AccessabilityRoot = Accessibility.Screen.SignUp.self
class SignUpScreen: AuthorizationPageObject {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var nameField: XCUIElement {
        return self.application.textFields[AccessabilityRoot.NameField]
    }
    
    public var emailField: XCUIElement {
        return self.application.textFields[AccessabilityRoot.EmailField]
    }
    
    public var passwordField: XCUIElement {
        return self.application.secureTextFields[AccessabilityRoot.PasswordField]
    }
    
    public var rePasswordField: XCUIElement {
        return self.application.secureTextFields[AccessabilityRoot.RePasswordField]
    }
    
    public var registerButton: XCUIElement {
        return self.application.buttons[AccessabilityRoot.RegisterButton]
    }
    
    private func enterName(name: String) {
        nameField.tap()
        nameField.typeText(name)
    }
    
    private func enterEmail(email: String) {
        emailField.tap()
        emailField.typeText(email)
    }
    
    private func enterPassword(password: String) {
        passwordField.tap()
        passwordField.typeText(password)
    }
    
    private func enterRePassword(rePassword: String) {
        rePasswordField.tap()
        rePasswordField.typeText(rePassword)
    }
    
    public func enterCredential(){
        enterName(name: "Test Client")
        enterEmail(email: "randomemail@qa.team")
        enterPassword(password: "qwerty123456")
        enterRePassword(rePassword: "qwerty123456")
    }
    
    public func registerNewUser() {
        registerButton.tap()
    }
}
