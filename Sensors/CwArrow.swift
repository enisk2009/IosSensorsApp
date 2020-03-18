//
//  CwArrow.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/30/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class CwArrowDraw:NSObject{


    func drawCanvas2(frame: CGRect = CGRect(x: 0, y: 0, width: 170, height: 113), fraction: CGFloat = 1) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let appblue = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

        //// Bezier 4 Drawing
        context.saveGState()
        context.setAlpha(fraction)

        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: frame.minX + 133.06, y: frame.minY + 84.51))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 156.72, y: frame.minY + 65.6))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 142.84, y: frame.minY + 65.6))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 110.42, y: frame.minY + 65.6))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 133.06, y: frame.minY + 84.51))
        bezier4Path.close()
        bezier4Path.move(to: CGPoint(x: frame.minX + 27.54, y: frame.minY + 76.78))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 42.46, y: frame.minY + 76.78))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 42.46, y: frame.minY + 39.2))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 82.08, y: frame.minY + 39.2))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 124.58, y: frame.minY + 39.2))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 124.58, y: frame.minY + 65.6))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 144.32, y: frame.minY + 65.6))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 144.32, y: frame.minY + 28.49))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 27.54, y: frame.minY + 28.49))
        bezier4Path.addLine(to: CGPoint(x: frame.minX + 27.54, y: frame.minY + 76.78))
        bezier4Path.close()
        appblue.setFill()
        bezier4Path.fill()

        context.restoreGState()
    }


}
