//
//  SignInVC.swift
//  Picapp
//
//  Created by Kafui Kumah on 6/24/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit
import FBSDKLoginKit
import FBSDKCoreKit
import Firebase

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //Facebook Authentocation
    @IBAction func FacebookButtonPressed(_ sender: UIButton) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email", "public_profile"], from: self) { (result, error) in
            
            if let error = error {
                print("Unable to authenticate with Facebook: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to access token")
                return
            }
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            //Perform Login by calling Firebase APIs
            Auth.auth().signIn(with: credential, completion: {(user, error) in
            
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    let alertController = UIAlertController (title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okayAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                    
                }
                
                //Present the Main View
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MainVC") {
                    UIApplication.shared.keyWindow?.rootViewController = viewController
                    self.dismiss(animated: true, completion: nil)
                }
                
                

            })
            
        }
        
    }

    
}




