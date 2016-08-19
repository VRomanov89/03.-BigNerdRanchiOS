//
//  ViewController.swift
//  Animations
//
//  Created by Volodymyr Romanov on 8/18/16.
//  Copyright © 2016 Volodymyr Romanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var animatedField: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        animatedField.alpha = 0
        animateLabelTransitions()
    }
    
    func animateLabelTransitions() {
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            self.animatedField.alpha = 1
        })
    }
}

