//
//  SignUpViewController.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 6/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.sendButton.isEnabled = false
        self.sendButton.backgroundColor = UIColor.gray
        self.sendButton.layer.cornerRadius = self.sendButton.frame.size.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let nsString = textField.text as NSString?
        let newString = nsString?.replacingCharacters(in: range, with: string).trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        self.sendButton.isEnabled = newString != ""
        self.sendButton.backgroundColor = self.sendButton.isEnabled ? UIColor(colorLiteralRed: 107.0/255.0, green: 193.0/255.0, blue: 164.0/255.0, alpha: 1.0) : UIColor.gray
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func sendAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
