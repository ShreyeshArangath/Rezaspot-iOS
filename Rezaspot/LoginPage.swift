//
//  LoginPage.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/20/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LoginPage: UIViewController {

    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
  
    
    @IBOutlet weak var emailTextField: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emailTextField.placeholder = "Email"
        emailTextField.title = "Your Email Address"
        emailTextField.selectedTitleColor = textFieldColor
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SignInPage {
            let vc = segue.destination as? SignInPage
            vc?.emailID = emailTextField.text!
        }
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
