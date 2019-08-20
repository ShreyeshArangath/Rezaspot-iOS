//
//  CarModel.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/21/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class CarModelViewController : UIViewController {
    
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    var uid = ""
    var email = ""
    var name = ""
    
    @IBOutlet weak var carModelTextField: SkyFloatingLabelTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModelTextField.placeholder = "Model/Make of your Car"
        carModelTextField.title = "Please enter the model/make of your car! "
        carModelTextField.selectedTitleColor = textFieldColor

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is LicensePlateNumber{
            let vc = segue.destination as? LicensePlateNumber
            vc?.uid = uid
            vc?.name=name
            vc?.email=email
            vc?.model=carModelTextField.text!
        }
    }
    
    
    
}
