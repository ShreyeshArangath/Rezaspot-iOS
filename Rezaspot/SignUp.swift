//
//  SignUp.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/20/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class SignUp : UIViewController {
    
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBOutlet weak var nameTextField: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Name"
        nameTextField.title = "Please enter your name"
        nameTextField.selectedTitleColor = textFieldColor
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is EmailViewController {
            let vc = segue.destination as? EmailViewController
            vc?.name = nameTextField.text!
        }
    }

    
}
