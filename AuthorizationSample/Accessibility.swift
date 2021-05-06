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
    /// InputBar тулбар над клавиатурой с кнопкой Готово
    enum InputBar: AccessibilityEnum {
        static let View = wrapIdentifier("View")
        static let DoneButton = wrapIdentifier("DoneButton")
    }
    
    /// Экраны
    enum Screen {
        enum Root: AccessibilityEnum {
            // Кореневая вьюха модуля
            static let View = wrapIdentifier("View")
            
        }
    }
}
