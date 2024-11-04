//
//  ikinciSayfaViewController.swift
//  NameSegue
//
//  Created by Selvi Gözlügöl on 18.08.2024.
//

import UIKit

class ikinciSayfaViewController: UIViewController {

    @IBOutlet weak var ikinciSayfa: UILabel!
    @IBOutlet weak var isimGoster: UILabel!
    
    var isimGir = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isimGoster.text = isimGir
    }
}
