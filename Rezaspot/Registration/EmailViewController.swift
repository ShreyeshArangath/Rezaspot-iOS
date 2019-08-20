//
//  EmailViewController.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/21/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class EmailViewController : UIViewController {
    var name = ""
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBOutlet weak var nameTextField: UILabel!
    
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        nameTextField.text = "Welcome, " + name
        // Do any additional setup after loading the view.
        emailTextField.placeholder = "Email"
        emailTextField.title = "Your Email Address"
        emailTextField.selectedTitleColor = textFieldColor
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is PasswordViewController {
            let vc = segue.destination as? PasswordViewController
            vc?.name = name
            vc?.email = emailTextField.text!
            
        }
    }

    
    
}
