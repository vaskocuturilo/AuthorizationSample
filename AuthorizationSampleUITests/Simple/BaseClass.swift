//
//  BaseClass.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 11.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

class BaseClass: XCTestCase {

    var application: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        application = XCUIApplication()
        application.launchArguments = ["testing"]
        application.launch()
    }
    
    override func tearDown() {
        let screenshot = XCUIScreen.main.screenshot()
        let attachment = XCTAttachment(screenshot: screenshot)
        attachment.lifetime = .deleteOnSuccess
        add(attachment)
        application.terminate()
    }
}
