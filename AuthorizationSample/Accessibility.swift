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
            public static let SignInAnonymouseButton = wrapIdentifier("SignInAnonymouse")
        }
        
        public enum Login: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Fields on login page
            public static let EmailField = wrapIdentifier("EmailField")
            public static let PasswordField = wrapIdentifier("PasswordField")
            public static let LoginButton = wrapIdentifier("LoginButton")
            
        }
        
        public enum SignUp: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            //Fields on sign up page
            public static let NameField = wrapIdentifier("NameField")
            public static let EmailField = wrapIdentifier("EmailField")
            public static let PasswordField = wrapIdentifier("PasswordField")
            public static let RePasswordField = wrapIdentifier("RePasswordField")
            public static let RegisterButton = wrapIdentifier("RegisterButton")
        }
        
        public enum Logout: AccessibilityEnum {
            // root view
            public static let View = wrapIdentifier("View")
            
            // Button on logout page
            public static let LogoutButton = wrapIdentifier("LogoutButton")
        }
    }
}
