//
//  RootScreen.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

fileprivate let AccessibilityRoot = Accessibility.Screen.Root.self
class RootScreen: AuthorizationPageObject {
    
    override var root: XCUIElement{
        return self.application.otherElements[AccessibilityRoot.View]
    }
    
    public var loginButton :XCUIElement {
        return self.application.buttons[AccessibilityRoot.LoginButton]
    }
    
    public func tapLoginButton() {
        loginButton.tap()
    }
}
