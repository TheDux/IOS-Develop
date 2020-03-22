//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by TIAGO MARTINS on 22/03/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfCharacters: Int = 10
    var numberOfPasswords: Int = 1
    var useLetters: Bool!
    var useNumbers: Bool!
    var useCapitalLetters: Bool!
    var useSpecialCharacters: Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //NO GAME NO LIFE
        title = "Total de Senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCharacters: numberOfCharacters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCharacters: useSpecialCharacters)
        
        generatePasswords()
        
    }
    func generatePasswords() {
        //SCROLLAR E DAR COMANDO NO BOTAO RETORNA PRO TOPO DA TELA
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        //LIMPA A VIEW
        tvPasswords.text = " "
        let passwords = passwordGenerator.generate(total: numberOfPasswords)
        for password in passwords {
            tvPasswords.text.append(password + "\n\n")
        }
    }

    @IBAction func generate(_ sender: UIButton) {
        generatePasswords()
    }
}
