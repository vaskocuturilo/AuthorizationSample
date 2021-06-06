//
//  SimpleFacebookTest.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class SimpleFacebookTest: AuthorizationTestCase {
    
    func testSimpleFacebook() throws {
        waitForElementToAppear(element: screens.rootScreen.root)
        screens.rootScreen.tapFacebookButton()
        
        waitForElementToAppear(element: screens.rootScreen.root)
        XCTAssert(screens.rootScreen.root.exists, "Main screen must be open")
    }
}
