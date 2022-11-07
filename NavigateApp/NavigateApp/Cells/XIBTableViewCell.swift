//
//  XIBTableViewCell.swift
//  NavigateApp
//
//  Created by Consultant on 11/6/22.
//

import UIKit

class XIBTableViewCell: UITableViewCell {
    var profile: [String] = ["Height: 6'6, Weight: 216", "Height: 6'8, Weight: 228", "Height: 6'3, Weight: 220", "Height: 7'2, Weight: 240", "Height: 6'8, Weight: 215", "Height: 6'6, Weight: 212", "Height: 6'5, Weight: 195", "Height: 6'7, Weight: 229", "Height: 6'10, Weight: 245", "Height: 6'7, Weight: 220", "Height: 6'11, Weight: 232", "Height: 6'11, Weight: 235", "Height: 6'9, Weight: 220", "Height: 6'1, Weight: 173", "Height: 6'6, Weight: 190", "Height: 6'4, Weight: 190", "Height: 6'3, Weight: 200", "Height: 6'2, Weight: 185", "Height: 6'9, Weight: 215", "Height: 6'3, Weight: 180", "Height: 6'2, Weight: 185", "Height: 7'1, Weight: 245", "Height: 7'0, Weight: 265", "Height: 6'9, Weight: 231", "Height: 6'8, Weight: 216", "Height: 6'9, Weight: 222", "Height: 7'1, Weight: 249", "Height: 6'9, Weight: 254", "Height: 6'9, Weight: 201", "Height: 6'8, Weight: 245"]
    var ppg: [Double] = [30.12, 16.1, 25, 17.1, 17.6, 18.2, 14, 17.8, 11.2, 7.3, 8.8, 11.6, 14.8, 11.8, 18.5, 10.9, 14.9, 9.8, 16, 6, 7.2, 13.2, 7.2, 9, 14.8, 10.2, 17, 15.9, 7.4, 9.7]

    @IBOutlet weak var seeMe: UIImageView!
    
    @IBOutlet weak var label: UILabel!

    //@IBOutlet weak var infoLabel: UILabel!
    //@IBOutlet weak var navigationButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!

    //@IBAction func switcharoo(_ sender: AnyObject) {
//        switch label{
//        case "Michael Jordan" : infoLabel.text = profile[0]
//        }
//        if sender.selectedSegmentIndex == 0 {
//            infoLabel.text = "He tall"
//        } else {
//            infoLabel.text = "Kinda trash tho"
//        }
    //}

    @IBAction func navigationPressed(_ sender: Any) {
        print("navigation button pressed")
        self.inputViewController?.performSegue(withIdentifier: "NavigationSegue", sender: self)
    }
    
}
