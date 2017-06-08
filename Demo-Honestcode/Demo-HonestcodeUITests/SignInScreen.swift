//
//  SignInScreen.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import XCTest

class SignInScreen: NSObject {

    static let app = XCUIApplication()

    static func screenExists() {
        let emailTextField = app.textFields["emailSignInTextField"]
        XCTAssert(emailTextField.exists)
        
        let passwordTextField = app.textFields["passwordSignInTextField"]
        XCTAssert(passwordTextField.exists)
        
        let enterButton = app.buttons["enterButton"]
        XCTAssert(enterButton.exists)
    }
    
    static func enterButtonDisabled() {
        let enterButton = app.buttons["enterButton"]
        XCTAssert(!enterButton.isEnabled)
    }
    
    static func writeEmail() {
        let emailTextField = app.textFields["emailSignInTextField"]
        emailTextField.typeText("user@domain.com")
    }
    
    static func writePassword() {
        let passwordTextField = app.textFields["passwordSignInTextField"]
        passwordTextField.typeText("password")
    }
    
    static func tapEnterButton() {
        app.buttons["enterButton"].tap()
    }
}
