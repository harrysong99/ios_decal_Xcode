//
//  ViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/9/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var buttonStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for object in buttonStackView.arrangedSubviews {
            if let button = object as? UIButton {
                button.layer.borderColor = UIColor.systemBlue.cgColor
                button.layer.borderWidth = 2.0
                button.layer.cornerRadius = button.layer.frame.height / 2
                button.layer.masksToBounds = true
            }
        }
    }


}

