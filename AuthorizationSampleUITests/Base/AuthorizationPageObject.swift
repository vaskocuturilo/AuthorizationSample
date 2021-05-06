//
//  AuthorizationPageObject.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import XCTest

class AuthorizationPageObject {
    let application: XCUIApplication
    
    
    // MARK: - Init
    init(application: XCUIApplication) {
        self.application = application
    }
    
    var root: XCUIElement {
        fatalError("Use subclass of ToDoPageObject instead base class")
    }
}
