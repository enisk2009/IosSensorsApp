//
//  GyroViewController.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion


//Draw Right,Left,Top,Bottom arrows for Gyro Page
class RightArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var y_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = arrowDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(y_opacity))
    }
}



class LeftArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var y_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = leftArrowDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(-y_opacity))
    }
}



class TopArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var x_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = topArrowDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(-x_opacity))
    }
}



class BottomArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var x_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = bottomArrowDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(x_opacity))
    }
}


//Draw CW and CCW for Gyro

class CwArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var z_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = CwArrowDraw()
        ArrowDraw.drawCanvas2(frame: bounds, fraction: CGFloat(-z_opacity))
    }
}

class CcwArrowView: UIView {
    
    var innerOpacity:CGFloat = 1.0
    
    var z_opacity:CGFloat{
        set(newOpacity){
            innerOpacity = newOpacity
            setNeedsDisplay()
        }
        get{
            return innerOpacity
        }
    }
    
    
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = CcwArrowDraw()
        ArrowDraw.drawCanvas2(frame: bounds, fraction: CGFloat(z_opacity))
    }
    
}






class GyroViewController: UIViewController{
    
    let motionManager = CMMotionManager()
    
    
    @IBOutlet weak var TopArrowView: TopArrowView!
    @IBOutlet weak var BottomArrowView: BottomArrowView!
    @IBOutlet weak var LeftArrowView: LeftArrowView!
    @IBOutlet weak var RightArrowView: RightArrowView!
    
    
    @IBOutlet weak var CwArrowView: CwArrowView!
    @IBOutlet weak var CcwArrowView: CcwArrowView!
    
    
    @IBOutlet weak var XLabel: UILabel!
    @IBOutlet weak var YLabel: UILabel!
    @IBOutlet weak var ZLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        //Measuring Raw Gyrometer
        
        motionManager.gyroUpdateInterval = 0.5
        motionManager.startGyroUpdates(to: OperationQueue.main){ (data,error) in
            
            var string_gyro_x = String.init(format: "%.4f rad/s", data!.rotationRate.x)
            var string_gyro_y = String.init(format: "%.4f rad/s", data!.rotationRate.y)
            var string_gyro_z = String.init(format: "%.4f rad/s", data!.rotationRate.z)
            
            self.XLabel.text = "X: \(string_gyro_x)"
            self.YLabel.text = "Y: \(string_gyro_y)"
            self.ZLabel.text = "Z: \(string_gyro_z)"
            
            
            self.TopArrowView.x_opacity = CGFloat((data!.rotationRate.x)/3)
            self.BottomArrowView.x_opacity = CGFloat((data!.rotationRate.x)/3)
            self.LeftArrowView.y_opacity = CGFloat((data!.rotationRate.y)/3)
            self.RightArrowView.y_opacity = CGFloat((data!.rotationRate.y)/3)
            self.CwArrowView.z_opacity = CGFloat((data!.rotationRate.z)/3)
            self.CcwArrowView.z_opacity = CGFloat((data!.rotationRate.z)/3)
            
        }
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        motionManager.stopGyroUpdates()
    }
}
