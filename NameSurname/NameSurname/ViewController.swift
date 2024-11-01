//
//  ViewController.swift
//  NameSurname
//
//  Created by Selvi Gözlügöl on 20.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = UserDefaults.standard.object(forKey: "NAME")
        let surname = UserDefaults.standard.object(forKey: "SURNAME")

        if let newName = name as? String {
            nameLabel.text = "Name : \(newName)"
        }
        if let newSurname = surname as? String {
            surnameLabel.text = "Surname : \(newSurname)"
        }
    }

    @IBAction func saveClicked(_ sender: Any) {
        UserDefaults.standard.set(nameText.text!, forKey: "NAME")
        UserDefaults.standard.set(surnameText.text!, forKey: "SURNAME")
        
        nameLabel.text = "Name : \(nameText.text!)"
        surnameLabel.text = "Surname : \(surnameText.text!)"
        
    }
    
    @IBAction func deleteClicked(_ sender: Any) {
        let name = UserDefaults.standard.object(forKey: "NAME")
        let surname = UserDefaults.standard.object(forKey: "SURNAME")
        
        if name as? String != nil {
            UserDefaults.standard.removeObject(forKey: "NAME")
            nameLabel.text = "Name : "
        }
        
        if surname as? String  != nil {
            UserDefaults.standard.removeObject(forKey: "SURNAME")
            surnameLabel.text = "Surname : "
        }
        
    }
    
}

