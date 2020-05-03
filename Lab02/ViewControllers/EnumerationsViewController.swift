//
//  EnumerationsViewController.swift
//  Lab02
//
//  Created by Nikhil Yerasi on 2/9/20.
//  Copyright © 2020 nyerasi. All rights reserved.
//

import UIKit

class EnumerationsViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var colorSegmentedControl: UISegmentedControl!
    @IBOutlet var typeSegmentedControl: UISegmentedControl!
    
    @IBOutlet var previewImageView: UIImageView!
    
    // VARIABLES TO INITIALIZE STRUCT
    var vehicleColor = VehicleColor.red
    var vehicleType = VehicleType.car
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = colorView.frame.height / 2
        colorView.layer.masksToBounds = true
        colorView.backgroundColor = .red
        
        // Do any additional setup after loading the view.
    }
    
    enum VehicleType {
        case car
        case bike
    }
    
    enum VehicleColor {
        case red
        case green
        case blue
        case yellow
    }
    
    
     // Create a vehicle struct with a type and color
   // Add a function fileName with no arguments that returns a String representing the file name of the vehicle image (doens't need to include any extensions like .png, look in the Assets.xcassets folder for all image names)
    struct Vehicle {
        // YOUR CODE HERE
        let type: VehicleType
        let color: VehicleColor
        func fileName () -> String {
            return "\(type)-\(color)"
        }
    }
    
    @IBAction func updateType(_ sender: Any) {
        switch typeSegmentedControl.selectedSegmentIndex {
        case 0:
            vehicleType = .car
        case 1:
            vehicleType = .bike
        default:
            print("Error: Segmented Control out of range")
        }
    }
    
    @IBAction func updateColor(_ sender: Any) {
        // Switch on the value of the colorSegementedControl to update the color variable defined above viewDidLoad, use the example above in updateType!
        // Also update the colorView's background color by setting colorView.backgroundColor to the appropriate UIColor (eg. colorView.backgroundColor = UIColor.blue)
        // YOUR CODE HERE
        switch colorSegmentedControl.selectedSegmentIndex {
        case 0:
            vehicleColor = .red
            colorView.backgroundColor = .red
        case 1:
            vehicleColor = .green
            colorView.backgroundColor = .green
        case 2:
            vehicleColor = .blue
            colorView.backgroundColor = .blue
        case 3:
            vehicleColor = .yellow
            colorView.backgroundColor = .yellow
        default:
            colorView.backgroundColor = .black
        }
        
    }
    
    @IBAction func previewButtonPressed(_ sender: Any) {
        // Create an instance of the vehicle struct
        // YOUR CODE HERE
        
        // Use the struct's fileName function to update previewImageView
        // HINT: Use previewImageView.image = UIImage(named: "YOUR-STRING-HERE") to update the image
        // YOUR CODE HERE
        let vehicle = Vehicle(type: vehicleType, color: vehicleColor)
        previewImageView.image = UIImage(named: vehicle.fileName())
        previewImageView.contentMode = .scaleAspectFit
    }
}
