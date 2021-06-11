//
//  SimpleUIWithoutPatternTest.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 11.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class SimpleLoginWithoutPatternTest: BaseClass {
    
    func testLoginFlow() throws {
        let sigInButton = application.buttons["Root.LoginButton"]
        let email  = application.textFields["Login.EmailField"]
        let password  = application.secureTextFields["Login.PasswordField"]
        let loginButton = application.buttons["Login.LoginButton"]
        
        sigInButton.tap()
        email.tap()
        email.typeText("tester@qa.team")
        
        password.tap()
        password.typeText("qwerty123456")
        
        loginButton.tap()
        
        
        let message = application.staticTexts["Welcome to my App"]
        XCTAssertTrue(message.waitForExistence(timeout: 5))
    }
}
