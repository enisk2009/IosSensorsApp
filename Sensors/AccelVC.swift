//
//  AccelVC.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

//Draw Up,Down,Left,Right arrows for accel page

class UpArrowAccelView: UIView {
    
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
        let ArrowDraw = ArrowUpAccelDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(y_opacity))
    }
}



class DownArrowAccelView: UIView {
    
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
        let ArrowDraw = ArrowDownAccelDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(-(y_opacity)))
    }
}

class LeftArrowAccelView: UIView {
    
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
        let ArrowDraw = ArrowLeftAccelDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(-(x_opacity)))
    }
}

class RightArrowAccelView: UIView {
    
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
        let ArrowDraw = ArrowRightAccelDraw()
        ArrowDraw.drawCanvas1(frame: bounds, fraction: CGFloat(x_opacity))
    }
}




class AccelVC: UIViewController{
    
    
    @IBOutlet weak var XLabel: UILabel!
    @IBOutlet weak var YLabel: UILabel!
    @IBOutlet weak var ZLabel: UILabel!
    
    
    
    @IBOutlet weak var UpArrowAccelView: UpArrowAccelView!
    @IBOutlet weak var DownArrowAccelView: DownArrowAccelView!
    @IBOutlet weak var LeftArrowAccelView: LeftArrowAccelView!
    @IBOutlet weak var RightArrowAccelView: RightArrowAccelView!
    
    
    
    let motionManager = CMMotionManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //Measuring Raw Accelerometer
        
        motionManager.accelerometerUpdateInterval = 0.5
        motionManager.startAccelerometerUpdates(to: OperationQueue.current!){ (data,error) in
            
            
            var string_accl_x = String.init(format: "%.4f G's", data!.acceleration.x)
            var string_accl_y = String.init(format: "%.4f G's", data!.acceleration.y)
            var string_accl_z = String.init(format: "%.4f G's", data!.acceleration.z)
            
            
            self.XLabel.text = "X: \(string_accl_x)"
            self.YLabel.text = "Y: \(string_accl_y)"
            self.ZLabel.text = "Z: \(string_accl_z)"
            
            
            self.UpArrowAccelView.y_opacity = CGFloat((data!.acceleration.y)/3)
            self.DownArrowAccelView.y_opacity = CGFloat((data!.acceleration.y)/3)
            self.LeftArrowAccelView.x_opacity = CGFloat((data!.acceleration.x)/3)
            self.RightArrowAccelView.x_opacity = CGFloat((data!.acceleration.x)/3)
            
            
        }
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        motionManager.stopAccelerometerUpdates()
    }
    
    
}


