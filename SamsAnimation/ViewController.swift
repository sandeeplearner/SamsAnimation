//
//  ViewController.swift
//  SamsAnimation
//
//  Created by Sandeep Bhandari on 9/8/17.
//  Copyright © 2017 Jiyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circle = CAShapeLayer()
        circle.path = UIBezierPath.init(ovalIn: CGRect(x: self.view.center.x - 14, y: self.view.center.y - 4, width: 8, height: 8)).cgPath
        circle.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        self.view.layer.addSublayer(circle)

//        let animationGroup = CAAnimationGroup()
//        animationGroup.duration =
        
        let colorAnimation = CABasicAnimation(keyPath: "fillColor")
        colorAnimation.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        colorAnimation.isRemovedOnCompletion = false
        colorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation.autoreverses = true
        colorAnimation.duration = 0.5
        circle.add(colorAnimation, forKey: "myAnimation")
        
        
        let jumpAnimation = CABasicAnimation(keyPath: "position.y")
        jumpAnimation.byValue = -10
        jumpAnimation.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        jumpAnimation.isRemovedOnCompletion = false
        jumpAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation.autoreverses = true
        jumpAnimation.duration = 0.5
        circle.add(jumpAnimation, forKey: "jumpAnimation")
        
        
        let circle2 = CAShapeLayer()
        circle2.path = UIBezierPath.init(ovalIn: CGRect(x: self.view.center.x - 4, y: self.view.center.y - 4, width: 8, height: 8)).cgPath
        circle2.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        self.view.layer.addSublayer(circle2)
        
        let colorAnimation2 = CABasicAnimation(keyPath: "fillColor")
        colorAnimation2.beginTime = CACurrentMediaTime() + 0.25
        colorAnimation2.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation2.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation2.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        colorAnimation2.isRemovedOnCompletion = false
        colorAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation2.autoreverses = true
        colorAnimation2.duration = 0.5
        circle2.add(colorAnimation2, forKey: "myAnimation")
        
        let jumpAnimation2 = CABasicAnimation(keyPath: "position.y")
        jumpAnimation2.beginTime = CACurrentMediaTime() + 0.25
        jumpAnimation2.byValue = -10
        jumpAnimation2.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        jumpAnimation2.isRemovedOnCompletion = false
        jumpAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation2.autoreverses = true
        jumpAnimation2.duration = 0.5
        circle2.add(jumpAnimation2, forKey: "jumpAnimation")
        
        let circle3 = CAShapeLayer()
        circle3.path = UIBezierPath.init(ovalIn: CGRect(x: self.view.center.x + 6, y: self.view.center.y - 4, width: 8, height: 8)).cgPath
        circle3.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        self.view.layer.addSublayer(circle3)
        
        let colorAnimation3 = CABasicAnimation(keyPath: "fillColor")
        colorAnimation3.beginTime = CACurrentMediaTime() + 0.375
        colorAnimation3.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation3.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation3.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        colorAnimation3.isRemovedOnCompletion = false
        colorAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation3.autoreverses = true
        colorAnimation3.duration = 0.5
        circle3.add(colorAnimation3, forKey: "myAnimation")
        
        let jumpAnimation3 = CABasicAnimation(keyPath: "position.y")
        jumpAnimation3.beginTime = CACurrentMediaTime() + 0.375
        jumpAnimation3.byValue = -10
        jumpAnimation3.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        jumpAnimation3.isRemovedOnCompletion = false
        jumpAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation3.autoreverses = true
        jumpAnimation3.duration = 0.5
        circle3.add(jumpAnimation3, forKey: "jumpAnimation")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

