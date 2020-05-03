//
//  StoryboardViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/12/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    @IBOutlet weak var labelToUpdate: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // for nice looking corners
        buttonOutlet.layer.cornerRadius = buttonOutlet.frame.height / 2
    }
    
    // YOUR CODE HERE
    var counter = 0
    @IBAction func buttonTapped(_ sender: UIButton) {
        counter += 1
        labelToUpdate.text = "\(counter)"
    }
    
    
    //Drag out a UI object of your choice and a UIButton from the Object Library
    // Customize the appearance (Font, Color, etc.) of the UI Object using the Attributes Inspector
    // Use the button to update the other object!
    
    // FOR EXAMPLE:
    // Drag out a UILabel and a UIButton from the object library
    // Create an IBOutlet from the label to *this* View Controller
    // Create an IBOutlet form the button to this View Controller
    // Create an IBAction from the button to this View Controller
    // Use the button to update the label's text
}
