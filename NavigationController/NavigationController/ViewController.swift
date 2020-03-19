//
//  ViewController.swift
//  NavigationController
//
//  Created by TIAGO MARTINS on 18/03/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    
    
    @IBAction func next(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func modBack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

