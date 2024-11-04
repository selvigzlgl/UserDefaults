//
//  ViewController.swift
//  NameSegue
//
//  Created by Selvi Gözlügöl on 18.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ilkSayfa: UILabel!
    @IBOutlet weak var isim: UITextField!
    
    var kullanıcıİsmi = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func girisYap(_ sender: Any) {
        kullanıcıİsmi = isim.text!
        performSegue(withIdentifier: "girisGecisi", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "girisGecisi"{
            let segueKontrol = segue.destination as! ikinciSayfaViewController
            segueKontrol.isimGir = kullanıcıİsmi
        }
    }
}
