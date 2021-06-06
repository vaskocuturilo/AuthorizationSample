//
//  SignUpScreen.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.06.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation
import XCTest

fileprivate let AccessabilityRoot = Accessibility.Screen.SignUp.self
class SignUpScreen: AuthorizationPageObject {
    
    override var root: XCUIElement {
        return self.application.otherElements[AccessabilityRoot.View]
    }
}
