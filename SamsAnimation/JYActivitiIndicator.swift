//
//  JYActivitiIndicator.swift
//  SamsAnimation
//
//  Created by Sandeep Bhandari on 9/8/17.
//  Copyright © 2017 Jiyo. All rights reserved.
//

import UIKit

class JYActivitiIndicator: CALayer {
    var isAnimationInProgress : Bool = false
    var circle : CAShapeLayer! = nil
    var circle2 : CAShapeLayer! = nil
    var circle3 : CAShapeLayer! = nil
    
    convenience init(frame : CGRect) {
        self.init()
        self.frame = frame
    }
    
    func startAnimating() {
        if isAnimationInProgress == false {
            isAnimationInProgress = true
            
            if circle == nil {
                circle = self.createCircleLayer(for: CGRect(x: self.position.x - 14, y: self.position.y - 4, width: 8, height: 8))
                self.addSublayer(circle)
            }
            
            let animationGroup = self.createAnimationGroup(with: CACurrentMediaTime())
            
            let colorAnimation = self.createColorAnimation()
            let jumpAnimation = self.createJumpAnimation()
            animationGroup.animations = [jumpAnimation,colorAnimation]
            circle.add(animationGroup, forKey: "circle1Animation")
            
            
            if circle2 == nil {
                circle2 = self.createCircleLayer(for: CGRect(x: self.position.x - 4, y: self.position.y - 4, width: 8, height: 8))
                self.addSublayer(circle2)
            }
            
            let animationGroup2 = self.createAnimationGroup(with: CACurrentMediaTime() + 0.25)
            let colorAnimation2 = self.createColorAnimation()
            let jumpAnimation2 = self.createJumpAnimation()
            animationGroup2.animations = [jumpAnimation2,colorAnimation2]
            circle2.add(animationGroup2, forKey: "circle2Animation")
            
            if circle3 == nil {
                circle3 = self.createCircleLayer(for: CGRect(x: self.position.x + 6, y: self.position.y - 4, width: 8, height: 8))
                self.addSublayer(circle3)
            }
            
            let animationGroup3 = self.createAnimationGroup(with: CACurrentMediaTime() + 0.375)
            let colorAnimation3 = self.createColorAnimation()
            let jumpAnimation3 = self.createJumpAnimation()
            animationGroup3.animations = [jumpAnimation3,colorAnimation3]
            circle3.add(animationGroup3, forKey: "circle3Animation")
        }
    }
    
    func stopAnimating() {
        if isAnimationInProgress == true {
            isAnimationInProgress = false
            self.circle.removeAnimation(forKey: "circle1Animation")
            self.circle2.removeAnimation(forKey: "circle2Animation")
            self.circle3.removeAnimation(forKey: "circle3Animation")
            self.circle.removeFromSuperlayer()
            self.circle2.removeFromSuperlayer()
            self.circle3.removeFromSuperlayer()
        }
    }
    
    func createCircleLayer(for frame : CGRect) -> CAShapeLayer {
        let circle = CAShapeLayer()
        circle.path = UIBezierPath.init(ovalIn: frame).cgPath
        circle.fillColor = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        return circle
    }
    
    func createColorAnimation() -> CABasicAnimation {
        let colorAnimation = CABasicAnimation(keyPath: "fillColor")
        colorAnimation.fromValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 0.3).cgColor
        colorAnimation.toValue = UIColor(red: (153 / 255), green: (153 / 255), blue: (153 / 255), alpha: 1.0).cgColor
        colorAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        colorAnimation.autoreverses = true
        colorAnimation.duration = 0.5
        return colorAnimation
    }
    
    func createJumpAnimation() ->CABasicAnimation {
        let jumpAnimation = CABasicAnimation(keyPath: "position.y")
        jumpAnimation.byValue = -20
        jumpAnimation.duration = 0.5
        jumpAnimation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        jumpAnimation.autoreverses = true
        return jumpAnimation
    }
    
    func createAnimationGroup(with beginTime : CFTimeInterval) -> CAAnimationGroup{
        let animationGroup = CAAnimationGroup()
        animationGroup.beginTime = beginTime
        animationGroup.duration = 1
        animationGroup.repeatCount = Float(CGFloat.greatestFiniteMagnitude)
        animationGroup.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animationGroup.autoreverses = true
        return animationGroup
    }
}
