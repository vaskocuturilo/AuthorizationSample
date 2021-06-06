//
//  CheckPreconditionsTest.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class CheckPreconditionsTest: AuthorizationTestCase {
    
    func testCheckPreconditions() throws {
        waitForElementToAppear(element: screens.rootScreen.root)
        
        XCTAssert(screens.rootScreen.loginButton.exists)
        XCTAssert(screens.rootScreen.signUpButton.exists)
        XCTAssert(screens.rootScreen.facebookButton.exists)
        XCTAssert(screens.rootScreen.signAnonymouseButton.exists)

        XCTAssert(screens.rootScreen.root.exists, "Root screem must be open")
    }
}
