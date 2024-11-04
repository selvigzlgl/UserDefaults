//
//  SecondViewController.swift
//  MySegue
//
//  Created by Selvi Gözlügöl on 22.10.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    var mySurname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "\(myName) \(mySurname)"
    }
}
