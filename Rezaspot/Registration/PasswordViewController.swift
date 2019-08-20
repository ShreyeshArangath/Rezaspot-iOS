//
//  PasswordViewController.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/21/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import FirebaseAuth
import SkyFloatingLabelTextField

class PasswordViewController : UIViewController {
    var name=""
    var email=""
    var uid = ""
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBOutlet weak var passwordTextField: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.placeholder = "Password"
        passwordTextField.title = "Please Enter Your Password"
        passwordTextField.selectedTitleColor = textFieldColor
        
    }
    
    @IBAction func createUserButton(_ sender: Any) {
        createNewUser()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is CarModelViewController {
            let vc = segue.destination as? CarModelViewController
            vc?.uid = uid
            vc?.name=name
            vc?.email=email
           
        }
    }
    
    func createNewUser() {
        Auth.auth().createUser(withEmail: email, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print("There is an error")
            }
            else {
                self.uid=(user?.user.uid)!
                self.performSegue(withIdentifier: "toMoreDetails", sender: self)
            }
        }
    }
    
    
}
