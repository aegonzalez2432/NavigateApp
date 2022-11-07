//
//  NavigationDetailViewController.swift
//  NavigateApp
//
//  Created by Consultant on 11/6/22.
//

import UIKit

class NavigationDetailViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var nameString: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel.text = nameString

        // Do any additional setup after loading the view.
    }

}
