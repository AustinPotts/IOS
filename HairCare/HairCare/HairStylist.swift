//
//  HairStylist.swift
//  HairCare
//
//  Created by Taylor Lyles on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation
import UIKit

class HairStylist {
    
    
	var name: String
	var yearsOfExperience: String
    var image: UIImage
    var location: String
    
    init(name: String, yearsOfExperience: String, imageName: String, location: String) {
        self.image = UIImage(named: imageName)!
        self.name = name
        self.yearsOfExperience = yearsOfExperience
        self.location = location
    }
}
