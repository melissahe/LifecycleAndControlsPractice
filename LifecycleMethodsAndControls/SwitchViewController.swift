//
//  SwitchViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class SwitchViewController: UIViewController {

    @IBOutlet weak var switchText: UILabel!
    @IBOutlet weak var simpleSwitch: UISwitch!
    
    var switchIsOn: Bool = true {
        didSet {
            switchText.text = "The switch is " + (switchIsOn ? ("on") : ("off"))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchIsOn = simpleSwitch.isOn
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        switchIsOn = sender.isOn
    }
    

}
