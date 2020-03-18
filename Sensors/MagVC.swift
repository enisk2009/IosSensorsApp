//
//  MagVC.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion

class MagVC: UIViewController{
    
    let motionManager = CMMotionManager()
    
    
    @IBOutlet weak var Compass: UIImageView!
    
    @IBOutlet weak var XLabel: UILabel!
    @IBOutlet weak var YLabel: UILabel!
    @IBOutlet weak var ZLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Measuring Processed Magnetometer
        
        motionManager.deviceMotionUpdateInterval = 0.1
        motionManager.startDeviceMotionUpdates(using: .xTrueNorthZVertical , to: OperationQueue.main){(data,error) in
            
            
            var x = (data!.magneticField.field.x)
            var y = (data!.magneticField.field.y)
            var z = (data!.magneticField.field.z)
            
            
            
            var angYX = atan(y/x)
            var angZY = atan(z/y)
            
            
            if ((angYX > 0) && (angZY > 0)){
                
                UIView.animate(withDuration: 0.2, animations: {
                    self.Compass.transform = CGAffineTransform(rotationAngle: (CGFloat(-angYX)))
                }, completion: nil)
            }
                
                
            else if ((angYX < 0) && (angZY > 0)){
                UIView.animate(withDuration: 0.2, animations: {
                    self.Compass.transform = CGAffineTransform(rotationAngle: (CGFloat(1.57 + (1.5-angYX))))
                }, completion: nil)
            }
                
                
                
            else if ((angYX > 0) && (angZY < 0)){
                UIView.animate(withDuration: 0.2, animations: {
                    self.Compass.transform = CGAffineTransform(rotationAngle: (CGFloat(2*1.57 - (angYX))))
                }, completion: nil)
            }
                
                
                
            else if ((angYX < 0) && (angZY < 0)){
                UIView.animate(withDuration: 0.2, animations: {
                    self.Compass.transform = CGAffineTransform(rotationAngle: (CGFloat(3*1.57 + (1.5-angYX))))
                }, completion: nil)
            }
            
            
            var string_mag_x = String.init(format: "%.4f μT", x)
            var string_mag_y = String.init(format: "%.4f μT", y)
            var string_mag_z = String.init(format: "%.4f μT", z)
            
            self.XLabel.text = "X: \(string_mag_x)"
            self.YLabel.text = "Y: \(string_mag_y)"
            self.ZLabel.text = "Z: \(string_mag_z)"
        }
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        motionManager.stopDeviceMotionUpdates()
    }
}
