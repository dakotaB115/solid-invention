//
//  LoginController.swift
//  FirebaseTesting
//
//  Created by Dakota Brown on 10/23/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit
import Firebase

class LoginController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var debugLabel: UILabel!
    
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if user != nil {
                print("Successfully logged in")
                self.debugLabel.text = "Successfully logged in"
                self.performSegue(withIdentifier: "toUserScreen", sender: self)
            }
            if error != nil {
                self.debugLabel.text = "Email or Password invalid"
            }
        }
    }
    
    @IBAction func signup(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if user != nil {
                print("User created")
                self.debugLabel.text = "User created"
            }
            if error != nil {
                self.debugLabel.text = "Email or Password void"
            }
        }
    }
    @IBAction func unwindToLogin(_ segue: UIStoryboardSegue) { }
}
