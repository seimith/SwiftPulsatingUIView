//
//  ViewController.swift
//  SwiftPulsatingUIView
//
//  Created by Seimith on 9/18/16.
//  Copyright © 2016 Seimith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiViewToPulsate: UIView!
    
    
    @IBAction func handlePulsate(sender: AnyObject) {
        self.beginAnimation()
    }
    
    func beginAnimation () {
//        //=============================================
//        // Version 1: Pulsate 3x
//        //=============================================
//        let scaleAnimation:CABasicAnimation = CABasicAnimation(keyPath: "transform.scale")
//        scaleAnimation.duration = 1.0
//        scaleAnimation.repeatCount = 3.0
//        scaleAnimation.autoreverses = true
//        scaleAnimation.fromValue = 1.0;
//        scaleAnimation.toValue = 1.2;
//        self.uiViewToPulsate.layer.addAnimation(scaleAnimation, forKey: "scale")

//        //=============================================
//        // Version 2: To Pulse Forever
//        //=============================================
//        UIView.animateWithDuration(1.0, delay:0, options: [.Repeat, .Autoreverse], animations: {
//            self.uiViewToPulsate.transform = CGAffineTransformMakeScale(1.2, 1.2)
//        }, completion: nil)
        
//        //=============================================
//        // Version 2: Pulsate 3x
//        //=============================================
        UIView.animateWithDuration(1.0, delay:0, options: [.Repeat, .Autoreverse], animations: {
            UIView.setAnimationRepeatCount(3)
            self.uiViewToPulsate.transform = CGAffineTransformMakeScale(1.2, 1.2)
            
            }, completion: {completion in
                self.uiViewToPulsate.transform = CGAffineTransformMakeScale(1, 1)
        })
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.beginAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

