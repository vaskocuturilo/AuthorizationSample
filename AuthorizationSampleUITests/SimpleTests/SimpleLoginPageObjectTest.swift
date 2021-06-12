//
//  SimpleLoginPageObjectTest.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 12.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class SimpleLoginPageObjectTest: BaseTestCase {
    
    func testExample() throws {
        MainPage(application: application)
            .tapLoginButton()
            .typeEmail(userEmail: "tester@qa.team")
            .typePassword(userpassword: "qwerty123456")
            .tapLogin()
            .checkMessage(message: "Welcome to my App")
    }
}
