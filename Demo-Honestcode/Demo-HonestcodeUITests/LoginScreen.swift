//
//  LoginScreen.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import XCTest

class LoginScreen: NSObject {

    static let app = XCUIApplication()

    static func tapSignInButton() {
        app.buttons["SignInButton"].tap()
    }
    
    static func tapSignUpButton() {
        app.buttons["SignUpButton"].tap()
    }
    
    static func screenExists() {
        let signInButton = app.buttons["SignInButton"]
        XCTAssert(signInButton.exists)
        
        let signUpButton = app.buttons["SignUpButton"]
        XCTAssert(signUpButton.exists)
        
        let image = app.images["honestcodeLoginImage"]
        XCTAssert(image.exists)
    }
}
