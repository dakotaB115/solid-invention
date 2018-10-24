//
//  UserScreen1.swift
//  FirebaseTesting
//
//  Created by Dakota Brown on 10/23/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit
import Firebase
class UserScreen1: UIViewController {

    @IBAction func Logout(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            self.performSegue(withIdentifier: "toLogin", sender: self)
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
    }
    
}
