//
//  SignInViewController.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 6/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.enterButton.isEnabled = false
        self.enterButton.backgroundColor = UIColor.gray
        self.enterButton.layer.cornerRadius = self.enterButton.frame.size.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let nsString = textField.text as NSString?
        let newString = nsString?.replacingCharacters(in: range, with: string).trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        if textField == self.emailTextField {
            self.enterButton.isEnabled = newString != "" && self.passwordTextField.text != ""
        } else if textField == self.passwordTextField {
            self.enterButton.isEnabled = newString != "" && self.emailTextField.text != ""
        }
        self.enterButton.backgroundColor = self.enterButton.isEnabled ? UIColor(colorLiteralRed: 73.0/255.0, green: 189.0/255.0, blue: 220.0/255.0, alpha: 1.0) : UIColor.gray
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func enterAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "WelcomeVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
 
}
