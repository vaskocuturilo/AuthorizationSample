//
//  AuthorizationScreen.swift
//  AuthorizationSample
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation

final class AuthorizationScreen {
    private let container: AuthorizationTestCaseContainer
    
    init(container: AuthorizationTestCaseContainer) {
        self.container = container
    }
    
    lazy var rootScreen = RootScreen(application: container.application)
    lazy var loginScreen = LoginScreen(application: container.application)
}
