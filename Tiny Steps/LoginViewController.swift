//
//  LoginViewController.swift
//  Tiny Steps
//
//  Created by Nadaa Taiyab on 1/30/15.
//  Copyright (c) 2015 Tiny Steps LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func handleLogin(sender: AnyObject) {
        
        var email = emailTextField.text
        var password = passwordTextField.text
        
        PFUser.logInWithUsernameInBackground(email, password: password) { (user: PFUser!, error: NSError!) -> Void in
            if (user != nil) {
                NSLog("We Have a user: %@", user)
            } else {
                NSLog("Error: %@", error.localizedDescription)
            }
        }
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

