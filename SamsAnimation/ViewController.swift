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

        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 1
        animationGroup.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        animationGroup.isRemovedOnCompletion = false
        animationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationGroup.autoreverses = true
        
        let colorAnimation = CABasicAnimation(keyPath: "fillColor")
        colorAnimation.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation.autoreverses = true
        colorAnimation.duration = 0.5
        
        
        let jumpAnimation = CABasicAnimation(keyPath: "position.y")
        jumpAnimation.byValue = -20
        jumpAnimation.duration = 0.5
        jumpAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation.autoreverses = true
        animationGroup.animations = [jumpAnimation,colorAnimation]
        circle.add(animationGroup, forKey: nil)
    
        
        let circle2 = CAShapeLayer()
        circle2.path = UIBezierPath.init(ovalIn: CGRect(x: self.view.center.x - 4, y: self.view.center.y - 4, width: 8, height: 8)).cgPath
        circle2.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        self.view.layer.addSublayer(circle2)
        
        let animationGroup2 = CAAnimationGroup()
        animationGroup2.beginTime = CACurrentMediaTime() + 0.25
        animationGroup2.duration = 1
        animationGroup2.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        animationGroup2.isRemovedOnCompletion = false
        animationGroup2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationGroup2.autoreverses = true
        
        let colorAnimation2 = CABasicAnimation(keyPath: "fillColor")
        colorAnimation2.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation2.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation2.autoreverses = true
        colorAnimation2.duration = 0.5

        let jumpAnimation2 = CABasicAnimation(keyPath: "position.y")
        jumpAnimation2.byValue = -20
        jumpAnimation2.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation2.autoreverses = true
        jumpAnimation2.duration = 0.5
        animationGroup2.animations = [jumpAnimation2,colorAnimation2]
        circle2.add(animationGroup2, forKey: nil)

        
        let circle3 = CAShapeLayer()
        circle3.path = UIBezierPath.init(ovalIn: CGRect(x: self.view.center.x + 6, y: self.view.center.y - 4, width: 8, height: 8)).cgPath
        circle3.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        self.view.layer.addSublayer(circle3)

        let animationGroup3 = CAAnimationGroup()
        animationGroup3.beginTime = CACurrentMediaTime() + 0.375
        animationGroup3.duration = 1
        animationGroup3.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        animationGroup3.isRemovedOnCompletion = false
        animationGroup3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationGroup3.autoreverses = true
        

        let colorAnimation3 = CABasicAnimation(keyPath: "fillColor")
        colorAnimation3.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation3.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation3.autoreverses = true
        colorAnimation3.duration = 0.5

        let jumpAnimation3 = CABasicAnimation(keyPath: "position.y")
        jumpAnimation3.byValue = -20
        jumpAnimation3.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation3.autoreverses = true
        jumpAnimation3.duration = 0.5
        animationGroup3.animations = [jumpAnimation3,colorAnimation3]
        circle3.add(animationGroup3, forKey: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

