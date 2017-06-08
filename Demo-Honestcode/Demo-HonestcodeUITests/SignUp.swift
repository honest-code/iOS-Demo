//
//  SignUp.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import Cucumberish

class SignUp: NSObject {

    func defineSteps() {
        
        /*  Scenario: Sign up - Error  */
        
        Given("a user in 'Sign Up' page") { (args, userInfo) in
            LoginScreen.tapSignUpButton()
        }
        
        When("the user doesn't write the 'Email' text field") { (args, userInfo) in

        }
        
        Then("the 'Send' button is disabled") { (args, userInfo) in
            SignUpScreen.sendButtonDisabled()
        }
        
        /*  Scenario: Sign up - OK  */
        
        Given("a user in 'Sign Up' page") { (args, userInfo) in
            LoginScreen.tapSignUpButton()
        }
        
        When("the user write the email in 'Email' text field") { (args, userInfo) in
            SignUpScreen.writeEmail()
        }

        And("the user tap 'Send' button") { (args, userInfo) in
            SignUpScreen.tapSendButton()
        }
        
        Then("the page 'Sign Up' disappear") { (args, userInfo) in
            LoginScreen.screenExists()
        }
        
    }

}
