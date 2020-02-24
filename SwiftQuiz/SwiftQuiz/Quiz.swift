//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by TIAGO MARTINS on 23/02/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    //CONSTRUTOR QUE INICIALIZA AS VARIAVEIS
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    //UNDERLINE OCULTA O ARGUMENTO/ PARAMETRO
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
        
    }
    deinit {
        print("Liberou quiz da memoria")
    }
}
