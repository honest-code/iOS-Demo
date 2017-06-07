//
//  CucumberishInitializer.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import Foundation
import Cucumberish

class CucumberishInitializer: NSObject {

    class func CucumberishSwiftInit() {
        self.defineMainStep()
        self.initSteppers()
        
        let bundle = Bundle(for: CucumberishInitializer.self)
        
        // Tell Cucumberish the name of your features folder and let it execute them for you...
        Cucumberish.executeFeatures(inDirectory: ".", from: bundle, includeTags: nil, excludeTags: nil)
    }
 
    class func defineMainStep() {
        var application : XCUIApplication!
        
        beforeStart { () -> Void in
            application = XCUIApplication()
        }
        
        afterFinish {
            
        }
        
        before { (scenario) in
            
            /*
             *  You can add parameters to set initial state of the app through "launchEnvironment"
             *  and "launchArguments" variables of XCUIApplication. Use these variables in
             *  appDelegate. This step is repeated before each scene.
             */
            application.launch()
        }
    }
    
    class func initSteppers() {
        Login().defineSteps()
        SignIn().defineSteps()
        SignUp().defineSteps()
    }
}
