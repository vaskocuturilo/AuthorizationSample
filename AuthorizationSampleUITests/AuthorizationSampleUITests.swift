//
//  AuthorizationSampleUITests.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 01.07.2020.
//  Copyright © 2020 Anton Smirnov. All rights reserved.
//

import XCTest


/// The simple automation script.
class AuthorizationSampleUITests: XCTestCase {
    
    override func setUp() {
        
        continueAfterFailure = false
    }
    
    override func tearDown() {
        
    }
    
    func testExample() {
        
        let app = XCUIApplication()
        app.launch()
    }
}
