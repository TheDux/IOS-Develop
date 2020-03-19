//
//  SecondViewController.swift
//  NavigationController
//
//  Created by TIAGO MARTINS on 19/03/20.
//  Copyright © 2020 Tiago Martins. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.setNavigationBarHidden(false, animated: true)
       
    }
    

    @IBAction func back(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

}
