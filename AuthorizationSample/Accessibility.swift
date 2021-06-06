//
//  Accessibility.swift
//  AuthorizationSampleUITests
//
//  Created by Anton Smirnov on 06.05.2021.
//  Copyright © 2021 Anton Smirnov. All rights reserved.
//

import Foundation

/// AccessibilityEnum
fileprivate protocol AccessibilityEnum {
    static func wrapIdentifier(_ label: String) -> String
}

fileprivate extension AccessibilityEnum {
    static func wrapIdentifier(_ label: String) -> String {
        return "\(self).\(label)"
    }
}

enum Accessibility {
    /// InputBar
    enum InputBar: AccessibilityEnum {
        static let View = wrapIdentifier("View")
        static let DoneButton = wrapIdentifier("DoneButton")
    }
    
    /// Screens
    enum Screen {
        enum Root: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Buttons on main page
            public static let LoginButton = wrapIdentifier("LoginButton")
            public static let SignUpButton = wrapIdentifier("SignUpButton")
            public static let FacebookButton = wrapIdentifier("FacebookButton")
        }
        
        public enum Login: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
        }
    }
}
