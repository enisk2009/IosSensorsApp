//
//  ProxVC.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

class ProxVC: UIViewController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //measuring proximity sensor
        
        DispatchQueue.main.async {
            UIDevice.current.isProximityMonitoringEnabled = true
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        DispatchQueue.main.async {
            UIDevice.current.isProximityMonitoringEnabled = false
        }
    }
}
