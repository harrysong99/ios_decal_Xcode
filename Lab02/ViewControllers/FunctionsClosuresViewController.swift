//
//  FunctionsClosuresViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/9/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class FunctionsClosuresViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var integerToDisplay: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Write a function called updateIntegerWithFunction which takes an integer parameter and returns an updated integer (how you update is your choice)
    // YOUR CODE HERE
    func updateIntegerWithFunction (number: Int) -> Int {
        return number + 1
    }
    
    // Write a closure called updateIntegerWithClosure which takes an integer parameter and returns an updated integer (how you update is your choice)
    // YOUR CODE HERE
    let updateIntegerWithClosure = { (number: Int) -> Int in
        return number + 5
    }
    
    @IBAction func updateWithFunction(_ sender: Any) {
        // YOUR CODE HERE: Update integerToDisplay with the function you wrote
        integerToDisplay = updateIntegerWithFunction(number: integerToDisplay)
        label.text = "\(integerToDisplay)"
    }
    
    @IBAction func updateWithClosure(_ sender: Any) {
        // YOUR CODE HERE: Update integerToDisplay with the closure you wrote
        integerToDisplay = updateIntegerWithClosure(integerToDisplay)
        label.text = "\(integerToDisplay)"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
