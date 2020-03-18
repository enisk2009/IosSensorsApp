//
//  ArrowUpAccel.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/30/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class ArrowUpAccelDraw: NSObject {

    func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 113, height: 170), fraction: CGFloat = 0.916) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let appblue = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

        //// Group
        context.saveGState()
        context.translateBy(x: frame.minX + 22.43, y: frame.minY + 160.79)
        context.rotate(by: 90 * CGFloat.pi/180)

        context.setAlpha(fraction)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: -114, y: -48.75, width: 114, height: 27))
        appblue.setFill()
        rectanglePath.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: -114, y: -21.75))
        bezierPath.addLine(to: CGPoint(x: -114, y: -0))
        bezierPath.addLine(to: CGPoint(x: -151.58, y: -32.86))
        bezierPath.addLine(to: CGPoint(x: -114, y: -68.14))
        appblue.setFill()
        bezierPath.fill()


        context.endTransparencyLayer()

        context.restoreGState()
    }

    
}
