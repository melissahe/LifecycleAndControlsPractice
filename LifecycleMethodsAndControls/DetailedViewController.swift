//
//  DetailedViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var colorLabel: UILabel!
    
    var passedInColor: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.colorLabel.text = passedInColor
        print("Detail: viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("Detail: viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("Detail: viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("Detail: viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("Detail: viewDidDisappear")
    }
    
}
