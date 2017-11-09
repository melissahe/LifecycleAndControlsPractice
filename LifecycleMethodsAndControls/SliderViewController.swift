//
//  SliderViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class SliderViewController: UIViewController {

    var currentVal: Double = 0.5 {
        didSet {
            view.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: CGFloat(currentVal), alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        currentVal = Double(sender.value)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
