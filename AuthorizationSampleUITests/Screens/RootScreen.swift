//
//  RootScreen.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class RootScreen: AuthorizationPageObject {
    
    override var root: XCUIElement{
        return self.application.otherElements[Accessibility.Screen.Root.View]
    }
}
