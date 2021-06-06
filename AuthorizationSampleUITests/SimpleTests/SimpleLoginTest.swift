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
        
        screens.loginScreen.enterCredential()
        
        waitForElementToAppear(element: screens.logoutScreen.root)
        screens.logoutScreen.tapLogoutButton()
        tapAlertButtonIfExists(named: "Ok")
        
        waitForElementToAppear(element: screens.rootScreen.root)
        XCTAssert(screens.rootScreen.root.exists, "Main screen must be open")
    }
}
