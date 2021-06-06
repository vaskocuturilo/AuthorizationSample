//
//  SimpleLoginTest.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class SimpleLoginTest: AuthorizationTestCase {

    func testSimpleLogin() throws {
        
        waitForElementToAppear(element: screens.rootScreen.root)
        screens.rootScreen.tapLoginButton()
        
        waitForElementToAppear(element: screens.loginScreen.root)
        XCTAssert(screens.loginScreen.root.exists, "Login screen must be open")
    }
}
