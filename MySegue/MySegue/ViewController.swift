//
//  ViewController.swift
//  MySegue
//
//  Created by Selvi Gözlügöl on 22.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveClicked(_ sender: Any) {
        userName = nameText.text! + " " + surnameText.text!
        performSegue(withIdentifier: "saveSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "saveSegue" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
}

