//
//  ViewController.swift
//  SamsAnimation
//
//  Created by Sandeep Bhandari on 9/8/17.
//  Copyright © 2017 Jiyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var testLayer : JYActivitiIndicator? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animateButtonTapped(_ sender: Any) {
        if testLayer?.isAnimationInProgress ?? false == false {
            testLayer = JYActivitiIndicator(frame: self.view.frame)
            self.view.layer.addSublayer(testLayer!)
            testLayer?.startAnimating()
        }
        else {
            testLayer?.stopAnimating()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

