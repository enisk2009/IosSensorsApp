//
//  ArrowRightAccel.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/30/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class ArrowRightAccelDraw: NSObject{
    
func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 170, height: 113), fraction: CGFloat = 0.916) {
    //// General Declarations
    let context = UIGraphicsGetCurrentContext()!

    //// Color Declarations
    let appblue = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

    //// Group
    context.saveGState()
    context.setAlpha(fraction)
    context.beginTransparencyLayer(auxiliaryInfo: nil)


    //// Rectangle Drawing
    let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + 11, y: frame.minY + 41, width: 114, height: 27))
    appblue.setFill()
    rectanglePath.fill()


    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: frame.minX + 125, y: frame.minY + 41))
    bezierPath.addLine(to: CGPoint(x: frame.minX + 125, y: frame.minY + 19.25))
    bezierPath.addLine(to: CGPoint(x: frame.minX + 162.58, y: frame.minY + 52.11))
    bezierPath.addLine(to: CGPoint(x: frame.minX + 125, y: frame.minY + 87.39))
    appblue.setFill()
    bezierPath.fill()


    context.endTransparencyLayer()
    context.restoreGState()
}

}
