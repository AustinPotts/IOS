//
//  SettingsViewController.swift
//  HairCare
//
//  Created by Austin Potts on 8/27/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var distanceSlider: UISlider!
    @IBOutlet weak var priceSlider: UISlider!
    @IBOutlet weak var ratingSwitch: UISwitch!
    
    @IBOutlet weak var saveButtonTapped: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
