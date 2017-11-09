//
//  SegmentedControlViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var segmentedTextLabel: UILabel!
    
    var currentSegmentIndex: Int = 1 {
        didSet {
            segmentedTextLabel.text = "The " + segmentedControl.titleForSegment(at: currentSegmentIndex)! + " segment is selected"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedTextLabel.text = "The " + segmentedControl.titleForSegment(at: segmentedControl.selectedSegmentIndex)! + " segment is selected"
    }

    @IBAction func segmentedIndexChanged(_ sender: UISegmentedControl) {
        currentSegmentIndex = sender.selectedSegmentIndex
    }
    
}
