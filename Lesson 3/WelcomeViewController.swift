//
//  WelcomeViewController.swift
//  Lesson 3
//
//  Created by Дмитрий Татаринцев on 26.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var hiNameLabel: UILabel!
    
    var nameLabel: String! = "Welcome, "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hiNameLabel.text = nameLabel

 
    }
    @IBAction func pressLogOut() {
        dismiss(animated: true) 
    }
    

   

}
