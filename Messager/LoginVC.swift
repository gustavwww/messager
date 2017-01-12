//
//  ViewController.swift
//  Messager
//
//  Created by Gustav Wadström on 2017-01-09.
//  Copyright © 2017 Gustav Wadström. All rights reserved.
//

import UIKit
import Firebase

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var activitySpinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activitySpinner.isHidden = true
        
    }


    @IBAction func singInPressed(_ sender: LoginBtn) {
        
        if emailField.text == "" || passField.text == "" {
            
            
            
            return
        }
        
        activitySpinner.isHidden = false
        if !activitySpinner.isAnimating {
            activitySpinner.startAnimating()
    
        
        FIRAuth.auth()?.signIn(withEmail: emailField.text!, password: passField.text!, completion: { (user, error) in
            
            if error != nil {
                //No account found
                print("No account found. \(error?.localizedDescription)")
                self.activitySpinner.isHidden = true
                self.activitySpinner.stopAnimating()
                
                return
            }
            
            //Acount has been found
            self.performSegue(withIdentifier: "SingedIn", sender: user)
            self.activitySpinner.isHidden = true
            self.activitySpinner.stopAnimating()
            
        })
        
    }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let dest = segue.destination as? MainVC {
            if let user = sender as? FIRUser {
                
                dest.user = user
                
            }
        }
        
        
        
    }
    
    
}
    

