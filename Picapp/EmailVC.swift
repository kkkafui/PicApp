//
//  EmailVC.swift
//  Picapp
//
//  Created by Kafui Kumah on 6/20/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit
import Firebase

class EmailVC: UIViewController {

    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var name1TxtField: UITextField!
    @IBOutlet weak var name2TxtField: UITextField!
    @IBOutlet weak var contactTxtField: UITextField!
    @IBOutlet weak var locationTxtField: UITextField!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func createAccButtonTapped(_ sender: Any) {
        
    // Setting text entry behaviors
        
        
        
        if name1TxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your first name", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
        
        if name2TxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your last name", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }

        
        if emailTxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        }
        
        if passwordTxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        }
        
        if contactTxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your phone number", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }

        if locationTxtField.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your location or address", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }

            
        
        else {
            
            
            //Create user
            
            Auth.auth().createUser(withEmail: emailTxtField.text!, password: passwordTxtField.text!) {(user, error)in
            
                if error == nil {
                    print("You have successfully signed up")
                    
                    
                    //Goes to complete sign up page
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "SignUpContdVC")
                    self.present(vc!, animated: true, completion: nil)
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let deafaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(deafaultAction)
                }
            
            }
        }
        
    }
    


}
