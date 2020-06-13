//
//  HospitalsCell.swift
//  HealthWebServices
//
//  Created by Himanshu Joshi on 29/12/19.
//  Copyright © 2019 Himanshu Joshi. All rights reserved.
//

import UIKit

class HospitalsCell: UITableViewCell {

    //Outlets
    @IBOutlet weak var hospitalName: UILabel!
    @IBOutlet weak var hospitalAddress: UILabel!
    @IBOutlet weak var hospitalPhone: UILabel!
    @IBOutlet weak var hospitalDistance: UILabel!
    
    func configureCell(hospitals: Hospitals) {
        hospitalName.text = hospitals.hospitalName
        hospitalPhone.text = hospitals.hospitalPhone
        hospitalAddress.text = hospitals.hospitalAddress
        hospitalDistance.text = hospitals.hospitalDistance
    }
    
}
