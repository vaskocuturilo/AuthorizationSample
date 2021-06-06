//
//  AuthorizationTestCase.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

class AuthorizationTestCase: XCTestCase {
    private let container = AuthorizationTestCaseContainer()
    private let springboardApplication = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
    func launch() {
            container.application.launchEnvironment["dst_autotest_mode"] = "true"
            container.application.launchArguments.append("-DST_CLEAN_STATE")
            container.application.launch()
        }
        
        override func setUp() {
            super.setUp()
            continueAfterFailure = false
            launch()
        }
        
        override func tearDown() {
            terminate()
            super.tearDown()
        }
        
        func terminate() {
            container.application.terminate()
        }
        
        var screenWaitingSeconds: TimeInterval {
            return 15
        }
        
        var application: XCUIApplication {
            return container.application
        }
        
        var screens: AuthorizationScreen {
            return container.screens
        }
        
        /// Function waitForElementToAppear.
        /// - Parameter element: this is XCUIElemnt.
        /// - Parameter timeout: time for delay.
        /// - Parameter file: this is file parametrs for recordFailure (marked).
        /// - Parameter line: this is line parametrs for recordFailure (marked).
        public func waitForElementToAppear(element: XCUIElement, timeout: TimeInterval = 15,  file: String = #file, line: UInt = #line) {
            let existsPredicate = NSPredicate(format: "exists == true")
            
            expectation(for: existsPredicate,
                        evaluatedWith: element, handler: nil)
            
            waitForExpectations(timeout: timeout) { (error) -> Void in
                if (error != nil) {
                    let message = "Failed to find \(element) after \(timeout) seconds."
                    self.recordFailure(withDescription: message, inFile: file, atLine: Int(line), expected: true)
                }
            }
        }
}