//
//  LicensePlateNumber.swift
//  Rezaspot
//
//  Created by Shreyesh on 8/21/19.
//  Copyright © 2019 Quark. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LicensePlateNumber : UIViewController {
    
    var name = ""
    var email = ""
    var model = ""
    var uid = ""
    
    let textFieldColor = UIColor(red: 225/255, green: 120/255, blue: 51/255, alpha: 1.0)
    
    @IBOutlet weak var licensePlate: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        licensePlate.placeholder = "License Plate Number"
        licensePlate.title = "Please enter your license plate number"
        licensePlate.selectedTitleColor = textFieldColor

    }
    
}
