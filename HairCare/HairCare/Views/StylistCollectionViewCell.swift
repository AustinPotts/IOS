//
//  StylistCollectionViewCell.swift
//  HairCare
//
//  Created by Austin Potts on 8/26/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class StylistCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stylistImageView: UIImageView!
    @IBOutlet weak var stylistNameLabel: UILabel!
    
    var hairStylist: HairStylist? {
        didSet{
            updateViews()
        }
    }
    
    private func updateViews(){
        guard let hairStylist = hairStylist else {return}
        stylistImageView.image = hairStylist.image
        stylistNameLabel.text = hairStylist.name
        
    }
    
}
