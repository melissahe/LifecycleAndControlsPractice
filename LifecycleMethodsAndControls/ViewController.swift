//
//  ViewController.swift
//  LifecycleMethodsAndControls
//
//  Created by C4Q on 11/7/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    let colorName: String = "blue"
    
    //before this finishes running, the view has not loaded
    //this is why you can't affect the layout or constraints here, they don't exist yet
    //BEFORE THIS IS CALLED, you might not have access to objects like labels, etc.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("viewDidLoad")
    }
    
    //also runs when you rotate the device because it has to configure itself
    //configures the location of stuff
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        print("viewWillLayoutSubviews")
    }
    
    //view hasn't appeared yet, just for animation stuff
    override func viewWillAppear(_ animated: Bool) {
        //animated - when segues happen, there's a little animation when the view is transitioning - that's the animated part
        super.viewWillAppear(animated)
        
        print("viewWillAppear")
    }

    //by the time this is called, the view now appears
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("viewDidAppear")
    }
    
    //app is on screen and running
    
    //transition from one view to another has occurred
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(false)
        
        print("viewWillDisappear, animated: \(animated)")
    }

    //view has now left the view hierarchy
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(false)
        
        print("viewDidDisappear, animated: \(animated)")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? DetailedViewController {
            destinationVC.passedInColor = colorName
        }
        
        //here, there is a gap between the view being initialized (all the properties) and view loading (the outlets being made etc.) for the view being transitioned to
        //at this point, this runs before viewDidLoad, but after the detailed view gets initialized, so it has to pass to a property, it can't pass to an outlet
        //this is why you do not directly change UI elements from here, they do not exist yet at this point
        //this is the ONLY point in time where the outlets are nil
    }
    
    //the back button animation is handled in the
    
}

