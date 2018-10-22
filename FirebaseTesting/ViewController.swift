//
//  ViewController.swift
//  FirebaseTesting
//
//  Created by Dakota Brown on 10/22/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func ButtonPressed(_ sender: Any) {
       Analytics.logEvent("Button_Pressed", parameters: nil)
    }
    
}

