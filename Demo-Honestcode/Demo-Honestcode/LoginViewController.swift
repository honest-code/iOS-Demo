//
//  LoginViewController.swift
//  Demo-Honestcode
//
//  Created by Jose Angel  Cuadrado Mingo on 6/6/17.
//  Copyright © 2017 HonestCode. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signInButton.layer.cornerRadius = self.signInButton.frame.size.height / 2
        self.signUpButton.layer.cornerRadius = self.signUpButton.frame.size.height / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func signInAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SignInVC")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SignUpVC")
        self.present(controller, animated: true, completion: nil)
    }
    
}
