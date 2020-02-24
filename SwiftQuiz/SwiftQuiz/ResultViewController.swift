//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by TIAGO MARTINS on 23/02/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswereds: UILabel!
    @IBOutlet weak var lbCorrects: UILabel!
    @IBOutlet weak var lbWrongs: UILabel!
    @IBOutlet weak var lbScore: UILabel!
    
    var totalCorrectAnswers: Int = 0
    var totalAnswers: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbAnswereds.text = "Perguntas respondidas: \(totalAnswers)"
        lbCorrects.text = "Perguntas corretas: \(totalCorrectAnswers)"
        lbWrongs.text = "Perguntas erradas: \(totalAnswers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers*100/totalAnswers
        lbScore.text = "\(score)%"
        
    }
    

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
}
