//
//  EditProfileVC.swift
//  Picapp
//
//  Created by Kafui Kumah on 7/27/17.
//  Copyright © 2017 Picapp Inc. All rights reserved.
//

import UIKit

class EditProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func close_edit_btn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func close_view_btn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
