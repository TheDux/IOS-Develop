//
//  PasswordsGenerator.swift
//  SuperSenha
//
//  Created by TIAGO MARTINS on 22/03/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfCharacters: Int
    var useLetters: Bool
    var useNumbers: Bool
    var useCapitalLetters: Bool
    var useSpecialCharacters: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialCharacters = "[$&+,:;=?@#|'<>.-^*()%!]"
    private let numbers = "0123456789"
    private let lettersHigh = "ABCDEFGHIJKLMNOPQRSTUV"
    
    
    init(numberOfCharacters: Int, useLetters: Bool, useNumbers: Bool, useCapitalLetters: Bool, useSpecialCharacters: Bool){
        
        var numchars = min(numberOfCharacters, 16)
        numchars = max(numchars, 1)
        self.useSpecialCharacters = useSpecialCharacters
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.numberOfCharacters = numchars
    }
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()
        var universe: String = ""
        
        if useLetters{
            universe += letters
        }
        if useNumbers{
            universe += numbers
        }
        if useSpecialCharacters{
            universe += specialCharacters
        }
        if useCapitalLetters{
            //universe += letters.uppercased()
            universe += lettersHigh
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfCharacters{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
            passwords.append(password)
        }
        return passwords
    }
}
