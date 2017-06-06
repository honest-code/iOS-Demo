//
//  SignInViewController.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 6/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.enterButton.layer.cornerRadius = self.enterButton.frame.size.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

    @IBAction func enterAction(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text, !email.isEmpty, !password.isEmpty {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "WelcomeVC")
            self.navigationController?.pushViewController(controller, animated: true)
        } else {
            showErrorAlert()
        }
    }
 
    func showErrorAlert() {
        let alertController = UIAlertController(title: "Error", message: "You haven't filled the email and/or password field", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
