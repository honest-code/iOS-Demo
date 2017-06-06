//
//  SignUpViewController.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 6/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sendButton.layer.cornerRadius = self.sendButton.frame.size.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func sendAction(_ sender: Any) {
        if let text = emailTextField.text, !text.isEmpty {
            self.dismiss(animated: true, completion: nil)
        } else {
            showErrorAlert()
        }
    }
    
    @IBAction func closeAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func showErrorAlert() {
        let alertController = UIAlertController(title: "Error", message: "You haven't filled the email field", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
