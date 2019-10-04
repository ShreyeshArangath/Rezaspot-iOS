//
//  LicensePlateNumber.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/21/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import FirebaseDatabase

class LicensePlateNumber : UIViewController {
    
    var name = ""
    var email = ""
    var model = ""
    var uid = ""
    var ref : DatabaseReference!
    
    
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBAction func updateUserDetails(_ sender: Any) {
        ref = Database.database().reference()
        ref.child("users").child(uid).setValue(["name":name,
                                                "email":email,
                                                "model": model,
                                                "licensePlateNumber":licensePlate.text!])
    }
    
    @IBOutlet weak var licensePlate: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        licensePlate.placeholder = "License Plate Number"
        licensePlate.title = "Please enter your license plate number"
        licensePlate.selectedTitleColor = textFieldColor

    }
    
}
