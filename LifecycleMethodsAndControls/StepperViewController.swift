//
//  StepperViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController, UITextFieldDelegate {
    
    //good to have a separate variable keep track of the value, instead of changing stepperLabel.text in the view
    //it's bad practice to store information only in the view;
    var currentVal: Double = 0 {
        didSet {
            if currentVal > stepper.maximumValue {
                currentVal = stepper.maximumValue
            }
            
            if currentVal < stepper.minimumValue {
                currentVal = stepper.minimumValue
            }
            
            stepper.value = currentVal
            stepperLabel.text = String(currentVal)
        }
    }
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        stepperLabel.text = String(stepper.value)
        stepper.minimumValue = 0 //can be changed, 0 by default
        stepper.maximumValue = 100 //can be changed, 100 by default
        stepper.autorepeat = true //lets you hold it down instead of having to click, true by default
        stepper.stepValue = 1 //what the stepper increments by, 1 by default
    }
    
    //these only get triggered when user clicks
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print("value was changed")
        currentVal = sender.value
    }

    @IBAction func resetButtonPressed(_ sender: UIButton) {
        stepper.value = 0
        currentVal = 0
    }
    
    //if you want the
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard "0123456789".contains(string) || string == "" else {
            return false
        }
        
        guard let currentText = textField.text else {
            return false
        }
        
        if string == "" {
            guard let intText = Int(currentText.dropLast()) else {
                if currentText.count == 1 {
                    currentVal = 0
                    stepper.value = 0
                    return true
                }
                return false
            }
            stepper.value = Double(intText)
            currentVal = Double(intText)
        }
        
        if string.count >= 1 {
            
            let combinedText = currentText + string
            
            guard let newInt = Int(combinedText) else {
                return false
            }
            stepper.value = Double(newInt)
            currentVal = Double(newInt)
        }
        
        return true
    }
    
}
