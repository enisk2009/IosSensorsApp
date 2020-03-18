//
//  BarVC.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit
import CoreMotion


//Draw Barometer

class BarView: UIView {
    
    var Length:CGFloat = 1.0
    
    var barLength:CGFloat{
        set(newBarLength){
            if newBarLength > 1100{
                Length = 1100
            }
            else if newBarLength < 900{
                Length = 900
            }
            else{
                Length = newBarLength
            }
            setNeedsDisplay()
        }
        get{
            return Length
        }
    }
    
    override func draw(_ rect: CGRect) {
        let ArrowDraw = BarDraw()
        ArrowDraw.drawCanvas3(frame: bounds, number: CGFloat(1100-barLength))
    }
}




class BarVC: UIViewController{
    
    let altimeter = CMAltimeter()
    
    @IBOutlet weak var Pressure: UILabel!
    @IBOutlet weak var Barometer: BarView!
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        //Measuring pressure
        if CMAltimeter.isRelativeAltitudeAvailable(){
            altimeter.startRelativeAltitudeUpdates(to: OperationQueue.main){ (data,error) in
                var pressure = (data!.pressure.floatValue)*10
                var string_pressure = String.init(format: "%.2f hPa", pressure)
                
                self.Pressure.text = string_pressure
                self.Barometer.barLength = CGFloat(pressure)
            }
        }
        
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        altimeter.stopRelativeAltitudeUpdates()
    }
}
