# ios_decal_Xcode

## Problem 1: Functions and Closures
Implement the following functions in ViewControllers/FunctionsClosuresViewController:

A function updateIntegerWithFunction, which takes in an integer and returns that integer updated in some way.

A closure updateIntegerWithClosure, which takes in an integer and returns that integer updated in some way.

An @IBAction function updateWithFunction, which calls the appropriate function and updates integerToDisplay (and the text of the label, implemented for you).

An @IBAction function updateWithClosure, which calls the appropriate closure and updates integerToDisplay (and the text of the label, implemented for you).

## Problem 2: Classes
Implement the following components of ClassesViewController.swift:

The Dog and Cat classes, which should contain a function speak() that returns a string with the animal's custom behavior (anything except the Animal class's default speak function).

The @IBAction functions dogSelected() and catSelected(), which appropriately sets the animal variable.

The @IBAction function speakPressed(), which updates the speakLabel's text with the behavior you defined for the selected animal.

## Problem 3: Enumerations
Implement the following components in EnumerationsViewController.swift:

A vehicle struct with type: VehicleType and color: VehicleColor variables and a fileType() method (look in code for more instructions).

A switch statement in the @IBAction function updateColor(), which updates the color of vehicleColor and colorView.

The @IBAction function previewButtonPressed(), which updates previewImageView.

## Problem 4: Xcode & Storyboard
For this part of the lab you will add objects to the final storyboard view controller and use the StoryboardViewController.swift file to add some code! This part of the lab can be as simple or sophisticated as you'd like, but here is a simple recomendation to get you started:

Drag out a UILabel and UIButton from the object library onto the storyboard. Drag out an IBOutlet and IBAction from each of these objects to the StoryboardViewController.swift, and add some code that updates the label upon the tap of the button.
