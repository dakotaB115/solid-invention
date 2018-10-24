//
//  RegisterController.swift
//  FirebaseTesting
//
//  Created by Dakota Brown on 10/23/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit
import Firebase

class RegisterController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var debugText: UILabel!
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        if let email = emailTextField.text{
            if let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
                guard let email = authResult?.user.email, error == nil else {
                    self.debugText.text = "You must enter an email."
                    return
                }
                print("\(email) created")
                guard let user = authResult?.user else { return }
                }
            } else {
                debugText.text = "Password cannot be empty"
            }
        } else {
            debugText.text = "Email cannot be empty"
        }
    }
}
