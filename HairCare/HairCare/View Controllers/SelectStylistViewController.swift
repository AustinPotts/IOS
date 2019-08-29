//
//  SelectStylistViewController.swift
//  HairCare
//
//  Created by Austin Potts on 8/28/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class SelectStylistViewController: UIViewController {
    
    @IBOutlet weak var selectStylistImageView: UIImageView!
    
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    @IBAction func scheduleStylistTapped(_ sender: Any) {
         dismiss(animated: true, completion: nil)
         showAlert()
        
    }
    
    
    @IBAction func leaveReviewTapped(_ sender: Any) {
        showReviewAlert()
    }
    
    var stylist: HairStylist?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    
   func updateViews() {
      if let stylist = stylist {
           selectStylistImageView.image = stylist.image
            nameLabel.text = stylist.name
            locationLabel.text = stylist.location
            ratingLabel.text = stylist.yearsOfExperience
            
       }
   }
    
    private func showAlert(){
        let alert = UIAlertController(title: "Your Appointment has been scheduled", message: "Thank you! Your schedule date will be emailed to you", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    private func showReviewAlert(){
        let reviewAlert = UIAlertController(title: "WARNING!", message: "You cannot leave a review without signing in.", preferredStyle: .alert)
        reviewAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(reviewAlert, animated: true, completion: nil)
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
