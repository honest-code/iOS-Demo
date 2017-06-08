//
//  SignIn.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 7/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit
import Cucumberish

class SignIn: NSObject {

    func defineSteps() {
        
        /*  Scenario: Sign In - Email field empty  */
        
        Given("a user in 'Sign In' page") { (args, userInfo) in
            LoginScreen.tapSignInButton()
        }
        
        When("the user doesn't write the 'Email' text field") { (args, userInfo) in
            
        }
        
        And("the user write the password in 'Password' text field") { (args, userInfo) in
            SignInScreen.writePassword()
        }
        
        Then("the 'Enter' button is disabled") { (args, userInfo) in
            SignInScreen.enterButtonDisabled()
        }
        
        /*  Scenario: Sign In - Password field empty  */
        
        Given("a user in 'Sign In' page") { (args, userInfo) in
            LoginScreen.tapSignInButton()
        }
        
        When("the user write the email in 'Email' text field") { (args, userInfo) in
            SignInScreen.writeEmail()
        }
        
        And("the user doesn't write the 'Password' text field") { (args, userInfo) in
            
        }
        
        Then("the 'Enter' button is disabled") { (args, userInfo) in
            SignInScreen.enterButtonDisabled()
        }
        
        /*  Scenario: Sign In - OK  */
        
        Given("a user in 'Sign In' page") { (args, userInfo) in
            LoginScreen.tapSignInButton()
        }
        
        When("the user write the email in 'Email' text field") { (args, userInfo) in
            SignInScreen.writeEmail()
        }
        
        And("the user write the password in 'Password' text field") { (args, userInfo) in
            SignInScreen.writePassword()
        }
        
        And("the user tap 'Enter' button") { (args, userInfo) in
            SignInScreen.tapEnterButton()
        }
        
        Then("the page 'Welcome' is opened") { (args, userInfo) in
            WelcomeScreen.screenExists()
        }
        
        /*  Scenario: Sign In - Empty fields  */
        
        Given("a user in 'Sign In' page") { (args, userInfo) in
            LoginScreen.tapSignInButton()
        }
        
        When("the user doesn't write the 'Email' text field") { (args, userInfo) in
            
        }
        
        And("the user doesn't write the 'Password' text field") { (args, userInfo) in
            
        }
        
        Then("the 'Enter' button is disabled") { (args, userInfo) in
            SignInScreen.enterButtonDisabled()
        }
        
    }

}
