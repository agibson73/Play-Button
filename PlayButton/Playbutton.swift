//
//  Playbutton.swift
//  Button
//
//  Created by A Gibson on 8/8/18.
//  Copyright © 2018 A Gibson. All rights reserved.
//

    import UIKit

    @IBDesignable
    class Playbutton: UIView {
        private var isAnimating : Bool = false
        
        lazy var mainOvalShapeLayer : CAShapeLayer = {
            let shapeLayer = CAShapeLayer()
            shapeLayer.frame = self.bounds
            shapeLayer.path = self.ovalPath(frame: self.bounds)
            shapeLayer.fillColor = UIColor.black.cgColor
            return shapeLayer
        }()
        
        lazy var secondaryOval : CAShapeLayer = {
            let shapeLayer = CAShapeLayer()
            shapeLayer.frame = self.bounds
            shapeLayer.path = self.ovalPath(frame: self.bounds)
            shapeLayer.fillColor = UIColor.black.cgColor
            return shapeLayer
        }()
        
        lazy var playButton : CAShapeLayer = {
            let shapeLayer = CAShapeLayer()
            shapeLayer.frame = self.bounds
            shapeLayer.path = self.playButtonPath(frame: self.bounds)
            shapeLayer.strokeColor = UIColor.lightGray.cgColor
            shapeLayer.fillColor = UIColor.white.cgColor
            return shapeLayer
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupView()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            setupView()
        }

        @IBInspectable var isSelected : Bool = false{
            didSet{
                if isSelected{
                    playButton.path = self.stopButtonPath(frame: self.bounds)
                    playButton.fillColor = UIColor.black.cgColor
                    playButton.strokeColor = nil
                    //playButton.didChangeValue(forKey: "path")
                    mainOvalShapeLayer.fillColor = UIColor.white.cgColor
                }else{
                    playButton.path = self.playButtonPath(frame: self.bounds)
                    playButton.fillColor = UIColor.white.cgColor
                    playButton.strokeColor = UIColor.lightGray.cgColor
                    //playButton.didChangeValue(forKey: "path")
                    mainOvalShapeLayer.fillColor = UIColor.black.cgColor
                }
            }
        }
        
        func setupView(){
            self.layer.addSublayer(mainOvalShapeLayer)
            //self.layer.addSublayer(secondaryOval)
            self.layer.addSublayer(playButton)
            
            mainOvalShapeLayer.strokeColor = UIColor.lightGray.cgColor
            secondaryOval.strokeColor = UIColor.lightGray.cgColor
        }
        
        
        func playButtonPath(frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100)) ->CGPath{
       
  
            //// Bezier Drawing
            let bezierPath = UIBezierPath()
            bezierPath.move(to: CGPoint(x: frame.minX + 0.42876 * frame.width, y: frame.minY + 0.66000 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.40917 * frame.width, y: frame.minY + 0.63800 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.41740 * frame.width, y: frame.minY + 0.66000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.40917 * frame.width, y: frame.minY + 0.65080 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.40917 * frame.width, y: frame.minY + 0.36173 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.42846 * frame.width, y: frame.minY + 0.34000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.40917 * frame.width, y: frame.minY + 0.34920 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.41728 * frame.width, y: frame.minY + 0.34000 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.44021 * frame.width, y: frame.minY + 0.34347 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.43240 * frame.width, y: frame.minY + 0.34000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.43636 * frame.width, y: frame.minY + 0.34120 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.67954 * frame.width, y: frame.minY + 0.48613 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.69082 * frame.width, y: frame.minY + 0.50493 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.68680 * frame.width, y: frame.minY + 0.49053 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.69093 * frame.width, y: frame.minY + 0.49733 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.67904 * frame.width, y: frame.minY + 0.52333 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.69072 * frame.width, y: frame.minY + 0.51240 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.68643 * frame.width, y: frame.minY + 0.51920 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.44007 * frame.width, y: frame.minY + 0.65680 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.42876 * frame.width, y: frame.minY + 0.66000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.43636 * frame.width, y: frame.minY + 0.65893 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.43255 * frame.width, y: frame.minY + 0.66000 * frame.height))
            bezierPath.close()
            return bezierPath.cgPath
        }
        
        func alternatePlayPath(frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100))->CGPath{
            //// Bezier Drawing
            let bezierPath = UIBezierPath()
            bezierPath.move(to: CGPoint(x: frame.minX + 0.37876 * frame.width, y: frame.minY + 0.66000 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.35917 * frame.width, y: frame.minY + 0.63800 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.36740 * frame.width, y: frame.minY + 0.66000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.35917 * frame.width, y: frame.minY + 0.65080 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.35917 * frame.width, y: frame.minY + 0.36173 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.37846 * frame.width, y: frame.minY + 0.34000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.35917 * frame.width, y: frame.minY + 0.34920 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.36728 * frame.width, y: frame.minY + 0.34000 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.39021 * frame.width, y: frame.minY + 0.34347 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.38240 * frame.width, y: frame.minY + 0.34000 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.38636 * frame.width, y: frame.minY + 0.34120 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.62954 * frame.width, y: frame.minY + 0.48613 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.64082 * frame.width, y: frame.minY + 0.50493 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.63680 * frame.width, y: frame.minY + 0.49053 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.64093 * frame.width, y: frame.minY + 0.49733 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.62904 * frame.width, y: frame.minY + 0.52333 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.64072 * frame.width, y: frame.minY + 0.51240 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.63643 * frame.width, y: frame.minY + 0.51920 * frame.height))
            bezierPath.addLine(to: CGPoint(x: frame.minX + 0.39007 * frame.width, y: frame.minY + 0.65680 * frame.height))
            bezierPath.addCurve(to: CGPoint(x: frame.minX + 0.37876 * frame.width, y: frame.minY + 0.66000 * frame.height), controlPoint1: CGPoint(x: frame.minX + 0.38636 * frame.width, y: frame.minY + 0.65893 * frame.height), controlPoint2: CGPoint(x: frame.minX + 0.38255 * frame.width, y: frame.minY + 0.66000 * frame.height))
            return bezierPath.cgPath
        }
        
        
        func stopButtonPath(frame: CGRect = CGRect(x: 0, y: 0, width: 100, height: 100))->CGPath{
            //// Rectangle Drawing
            let rectanglePath = UIBezierPath()
            
            let original = CGPoint(x: frame.minX + floor(frame.width * 0.34000 + 0.5), y: frame.minY + floor(frame.height * 0.34000 + 0.5))
            rectanglePath.move(to:original)
            
           // 1
            rectanglePath.addCurve(to:original, controlPoint1: original, controlPoint2: original)
            rectanglePath.addCurve(to:original, controlPoint1: original, controlPoint2: original)
            let newX = (frame.minX + floor(frame.width * 0.34000 + 0.5)) + floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)
            rectanglePath.addLine(to: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)))
            
            
            //2
            rectanglePath.addCurve(to: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)), controlPoint1: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)), controlPoint2: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)))
            rectanglePath.addCurve(to: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)), controlPoint1: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)), controlPoint2: CGPoint(x: newX, y: floor(frame.width * 0.66000 + 0.5) - floor(frame.width * 0.34000 + 0.5)))
            
            let newY = (frame.minY + floor(frame.height * 0.34000 + 0.5)) + (floor(frame.height * 0.66000 + 0.5) - floor(frame.height * 0.34000 + 0.5))
            rectanglePath.addLine(to: CGPoint(x: newX, y:newY))
            
            //3
            rectanglePath.addCurve(to: CGPoint(x: newX, y:newY), controlPoint1: CGPoint(x: newX, y:newY), controlPoint2: CGPoint(x: newX, y:newY))
            rectanglePath.addCurve(to: CGPoint(x: newX, y:newY), controlPoint1: CGPoint(x: newX, y:newY), controlPoint2: CGPoint(x: newX, y:newY))
            let point3 = CGPoint(x: frame.minX + floor(frame.width * 0.34000 + 0.5), y:newY)
             rectanglePath.addLine(to: point3)
            
            //4
            rectanglePath.addLine(to: original)
            rectanglePath.close()
            return rectanglePath.cgPath
        }
        
        func ovalPath(frame:CGRect)->CGPath{
            let ovalPath = UIBezierPath(ovalIn: CGRect(x: frame.minX + floor((frame.width - 80) * 0.50000 + 0.5), y: frame.minY + floor((frame.height - 80) * 0.50000 + 0.5), width: 80, height: 80))
            return ovalPath.cgPath
        }
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super.touchesBegan(touches, with: event)
            animateChangeDown()
            self.isSelected = !isSelected
        }
        
        func animateChangeDown(){
            
            let duration : Double = 0.18
            isAnimating = true
            if isSelected{
//                let pop = POPSpringAnimation(propertyNamed: "path")
//                pop?.springSpeed = 8
//                pop?.fromValue = self.stopButtonPath(frame: self.bounds)
//                pop?.toValue = self.alternatePlayPath(frame: self.bounds)
//                playButton.pop_add(pop, forKey: nil)
                let anim = CABasicAnimation(keyPath: "path")
                anim.fromValue = self.stopButtonPath(frame: self.bounds)
                if let currentLayer = self.playButton.presentation(){
                    anim.fromValue = currentLayer.value(forKeyPath: "path")
                }
                anim.toValue = self.playButtonPath(frame: self.bounds)
                anim.duration = duration
                anim.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                playButton.add(anim, forKey: nil)
                playButton.path = self.playButtonPath(frame: self.bounds)
                
                let playColor = CABasicAnimation(keyPath: "fillColor")
                playColor.fromValue = UIColor.black.cgColor
                if let currentLayer = self.playButton.presentation(){
                    playColor.fromValue = currentLayer.value(forKeyPath: "fillColor")
                }
                playColor.toValue = UIColor.white.cgColor
                playColor.duration = duration
                playColor.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                playButton.add(playColor, forKey: nil)
                
                CATransaction.begin()
                let fade = CABasicAnimation(keyPath: "fillColor")
                fade.fromValue = UIColor.white.cgColor
                if let currentLayer = self.mainOvalShapeLayer.presentation(){
                    fade.fromValue = currentLayer.value(forKeyPath: "fillColor")
                }
                fade.toValue = UIColor.black.cgColor
                fade.duration = duration
                fade.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                CATransaction.setCompletionBlock {
                    self.isAnimating = false
                }
                mainOvalShapeLayer.add(fade, forKey: nil)
                CATransaction.commit()
                
            }else{
                let pathChange = CABasicAnimation(keyPath: "path")
                pathChange.fromValue = self.playButtonPath(frame: self.bounds)
                if let currentLayer = self.playButton.presentation(){
                    //make interuptable
                    pathChange.fromValue = currentLayer.value(forKeyPath: "path")
                }
                pathChange.toValue = self.stopButtonPath(frame: self.bounds)
                pathChange.duration = duration
                pathChange.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                playButton.add(pathChange, forKey: nil)
                playButton.path = self.stopButtonPath(frame: self.bounds)

                let playColor = CABasicAnimation(keyPath: "fillColor")
                playColor.fromValue = UIColor.white.cgColor
                if let currentLayer = self.playButton.presentation(){
                    playColor.fromValue = currentLayer.value(forKeyPath: "fillColor")
                }
                playColor.toValue = UIColor.black.cgColor
                playColor.duration = duration
                playColor.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                playButton.add(playColor, forKey: nil)
                
                
                CATransaction.begin()
                let fade = CABasicAnimation(keyPath: "fillColor")
                fade.fromValue = UIColor.black.cgColor
                if let currentLayer = self.mainOvalShapeLayer.presentation(){
                    fade.fromValue = currentLayer.value(forKeyPath: "fillColor")
                }
                fade.toValue = UIColor.white.cgColor
                fade.duration = duration
                fade.timingFunction = CAMediaTimingFunction(controlPoints: 0.62,0.28,0.23,0.99)
                CATransaction.setCompletionBlock {
                    self.isAnimating = false
                }
                mainOvalShapeLayer.add(fade, forKey: nil)
                CATransaction.commit()
                
            }
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            self.mainOvalShapeLayer.frame = self.bounds
            self.mainOvalShapeLayer.path = self.ovalPath(frame: self.bounds)
            self.secondaryOval.frame = self.bounds
            self.secondaryOval.path = self.ovalPath(frame: self.bounds)
            self.playButton.frame = self.bounds
            
            if isSelected{
                self.playButton.path = stopButtonPath(frame: self.bounds)
                self.playButton.strokeColor = UIColor.black.cgColor
            }else{
                self.playButton.path = playButtonPath(frame: self.bounds)
            }
        }

    }

