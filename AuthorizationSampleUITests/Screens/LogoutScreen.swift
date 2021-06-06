//
//  LogoutScreen.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.Logout.self
class LogoutScreen: AuthorizationPageObject {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
    
    public var logoutButton :XCUIElement {
        return self.application.buttons[AccessabilityRoot.LogoutButton]
    }
    
    public func tapLogoutButton() {
        logoutButton.tap()
    }
}
