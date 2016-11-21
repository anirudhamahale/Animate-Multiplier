//
//  ViewController.swift
//  Constraint Animation CA
//
//  Created by LA Argon on 11/21/16.
//  Copyright © 2016 LA Argon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenWidthB: NSLayoutConstraint!
    @IBOutlet weak var greenWidthS: NSLayoutConstraint!
    
    @IBOutlet weak var redWidthS: NSLayoutConstraint!
    @IBOutlet weak var redWidthB: NSLayoutConstraint!
    
    @IBOutlet weak var greenButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func animateWithCoreAnimation() {
        if greenWidthB.priority == 999 {
            greenWidthB.priority = 1
            greenWidthS.priority = 999
            
            redWidthS.priority = 1
            redWidthB.priority = 999
        } else {
            greenWidthB.priority = 999
            greenWidthS.priority = 1
            
            redWidthS.priority = 999
            redWidthB.priority = 1
        
        }
        
        UIView.animateWithDuration(0.3, delay: 0, options: [.CurveEaseIn], animations: { 
            self.view.layoutIfNeeded()
            }, completion: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        animateWithCoreAnimation()
    }

}