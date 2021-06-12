//
//  MessageScreen.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 12.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

struct MessagePage: Page {
    let application: XCUIApplication
    
    func checkMessage(message: String) -> Self {
        let message = application.staticTexts[message]
        XCTAssertTrue(message.waitForExistence(timeout: 5))
        
        return self
    }
}
