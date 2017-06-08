//
//  WelcomeScreen.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 8/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import XCTest

class WelcomeScreen: NSObject {

    static let app = XCUIApplication()
    
    static func screenExists() {
        let label = app.staticTexts["welcomeLabel"]
        XCTAssert(label.exists)
        
        let image = app.images["honestcodeWelcomeImage"]
        XCTAssert(image.exists)
    }

}
