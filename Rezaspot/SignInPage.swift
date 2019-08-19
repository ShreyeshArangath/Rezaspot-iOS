//
//  SignInPage.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/20/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import FirebaseAuth
import NVActivityIndicatorView

class SignInPage: UIViewController {
    
    var emailID = ""
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBOutlet weak var passwordField: SkyFloatingLabelTextField!
    
    @IBAction func signInButton(_ sender: UIButton) {
        authenticateUser()
    }
    
    @IBOutlet weak var activityView: NVActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        passwordField.placeholder = "Password"
        passwordField.title = "Please Enter Your Password"
        passwordField.selectedTitleColor = textFieldColor
        print(emailID)
    }
    
   
    
    func authenticateUser(){
        activityView.startAnimating()
        print("Animating")
        Auth.auth().signIn(withEmail: emailID, password: passwordField.text!) { (res,
            error) in
            if let error = error{
                print(error)
                return
            }
            
        }
        performSegue(withIdentifier: "toHome", sender: self)
        print("Stopped")
        activityView.stopAnimating()
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
