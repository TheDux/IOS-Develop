//
//  ViewController.swift
//  testeUI
//
//  Created by TIAGO MARTINS on 19/01/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var viImg: UIImageView!
    @IBOutlet weak var viResults: UIView!
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcnaofunfa(_ sender: Any) {
        if let weight = Double(tfWeight.text!), let height = Double (tfHeight.text!){
            imc = weight / (height*height)
            showResults()

             view.endEditing(true)
                
        }
    }
    /*@IBAction func calculate(_ sender: Any) {
        print("default")
        if let weight = Double(tfWeight.text!), let height = Double (tfHeight.text!){
            imc = weight / (height*height)
            showResults()
        }
        
    }*/
    
    func showResults(){
        var result: String = " "
        var image: String = " "
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "magreza.png"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo.png"
        case 18.5..<25:
            result = "Peso ideal"
            image = "ideal.png"
        case 25..<30:
            result = "sobrepeso"
            image = "sobre.png"
        default:
            result = "Obesidade"
            image = "obesidade.png"
        }
        
        viResults.isHidden = false
        lbResult.text = "\(Int(imc)):\(result)"
        self.viImg.image =  UIImage(named: image)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    

}

