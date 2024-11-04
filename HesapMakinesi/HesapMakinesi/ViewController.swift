//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Selvi Gözlügöl on 16.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ilkSayi: UITextField!
    
    @IBOutlet weak var ikinciSayi: UITextField!
    
    @IBOutlet weak var sonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func topla(_ sender: Any) {
        if let sayi1 = Int(ilkSayi.text!){
            if let sayi2 = Int(ikinciSayi.text!){
                let hesapla = sayi1 + sayi2
                sonuc.text = String(hesapla)
            
            }
            else{
                sonuc.text = "Yanlış giriş!"
            }
        }
    }
    
    
    @IBAction func cikar(_ sender: Any) {
        if let sayi1 = Int(ilkSayi.text!){
            if let sayi2 = Int(ikinciSayi.text!){
                let hesapla = sayi1 - sayi2
                sonuc.text = String(hesapla)
            
            }
            else{
                sonuc.text = "Yanlış giriş!"
            }
        }
    
    }
    @IBAction func carp(_ sender: Any) {
        if let sayi1 = Int(ilkSayi.text!){
            if let sayi2 = Int(ikinciSayi.text!){
                let hesapla = sayi1 * sayi2
                sonuc.text = String(hesapla)
            
            }
            else{
                sonuc.text = "Yanlış giriş!"
            }
        }
    }
    
    @IBAction func bol(_ sender: Any) {
        if let sayi1 = Int(ilkSayi.text!){
            if let sayi2 = Int(ikinciSayi.text!){
                let hesapla = sayi1 / sayi2
                sonuc.text = String(hesapla)
            
            }
            else{
                sonuc.text = "Yanlış giriş!"
            }
        }
    }
    }
