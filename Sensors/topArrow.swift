//
//  topArrow.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class topArrowDraw: NSObject{
    

    func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 170, height: 113), fraction: CGFloat = 1) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let color = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

        //// Group
        context.saveGState()
        context.translateBy(x: 54.41, y: 139.5)
        context.rotate(by: 90 * CGFloat.pi/180)

        context.setAlpha(fraction)
        context.beginTransparencyLayer(auxiliaryInfo: nil)


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: -39.62, y: -0.17))
        bezierPath.addCurve(to: CGPoint(x: -118.07, y: -41.17), controlPoint1: CGPoint(x: -39.62, y: -0.17), controlPoint2: CGPoint(x: -124.61, y: -1.44))
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: -39.62, y: -0.17))
        bezier2Path.addCurve(to: CGPoint(x: -36, y: -14.17), controlPoint1: CGPoint(x: -39.62, y: 1.83), controlPoint2: CGPoint(x: -36, y: -14.17))
        bezier2Path.addCurve(to: CGPoint(x: -103.25, y: -41.17), controlPoint1: CGPoint(x: -36, y: -14.17), controlPoint2: CGPoint(x: -118.43, y: -21.17))
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        color.setFill()
        bezier3Path.fill()
        UIColor.black.setStroke()
        bezier3Path.lineWidth = 1
        bezier3Path.stroke()


        //// Bezier 5 Drawing
        let bezier5Path = UIBezierPath()
        color.setFill()
        bezier5Path.fill()
        UIColor.black.setStroke()
        bezier5Path.lineWidth = 1
        bezier5Path.stroke()


        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: -117.71, y: -41.17))
        bezier4Path.addLine(to: CGPoint(x: -130, y: -41.17))
        bezier4Path.addLine(to: CGPoint(x: -108.31, y: -61.17))
        bezier4Path.addLine(to: CGPoint(x: -89.51, y: -41.17))
        bezier4Path.addLine(to: CGPoint(x: -103.25, y: -41.17))
        color.setFill()
        bezier4Path.fill()
        UIColor.black.setStroke()
        bezier4Path.lineWidth = 1
        bezier4Path.stroke()


        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        bezier6Path.move(to: CGPoint(x: -99.6, y: -27.72))
        bezier6Path.addCurve(to: CGPoint(x: -96.7, y: -26.17), controlPoint1: CGPoint(x: -98.66, y: -27.1), controlPoint2: CGPoint(x: -97, y: -26.46))
        bezier6Path.addCurve(to: CGPoint(x: -94.79, y: -25.34), controlPoint1: CGPoint(x: -96.51, y: -25.98), controlPoint2: CGPoint(x: -95.1, y: -25.48))
        bezier6Path.addCurve(to: CGPoint(x: -70.71, y: -18.17), controlPoint1: CGPoint(x: -90.3, y: -23.41), controlPoint2: CGPoint(x: -86.1, y: -21.79))
        bezier6Path.addCurve(to: CGPoint(x: -37.45, y: -13.17), controlPoint1: CGPoint(x: -61.8, y: -16.08), controlPoint2: CGPoint(x: -37.45, y: -13.48))
        bezier6Path.addCurve(to: CGPoint(x: -40.34, y: -2.17), controlPoint1: CGPoint(x: -37.45, y: -12.17), controlPoint2: CGPoint(x: -40.34, y: -2.17))
        bezier6Path.addCurve(to: CGPoint(x: -116.26, y: -40.17), controlPoint1: CGPoint(x: -40.34, y: -2.17), controlPoint2: CGPoint(x: -121.32, y: -4.17))
        bezier6Path.addCurve(to: CGPoint(x: -106.14, y: -46.17), controlPoint1: CGPoint(x: -114.9, y: -49.85), controlPoint2: CGPoint(x: -107.4, y: -45.44))
        bezier6Path.addCurve(to: CGPoint(x: -104.5, y: -41.06), controlPoint1: CGPoint(x: -104.54, y: -47.11), controlPoint2: CGPoint(x: -104.05, y: -43.88))
        bezier6Path.addCurve(to: CGPoint(x: -104.93, y: -40.17), controlPoint1: CGPoint(x: -104.54, y: -40.82), controlPoint2: CGPoint(x: -104.88, y: -40.42))
        bezier6Path.addCurve(to: CGPoint(x: -103.53, y: -42.69), controlPoint1: CGPoint(x: -104.96, y: -40), controlPoint2: CGPoint(x: -103.49, y: -42.86))
        bezier6Path.addCurve(to: CGPoint(x: -105.72, y: -38.01), controlPoint1: CGPoint(x: -103.71, y: -41.81), controlPoint2: CGPoint(x: -105.46, y: -38.73))
        bezier6Path.addCurve(to: CGPoint(x: -105.45, y: -38.83), controlPoint1: CGPoint(x: -105.83, y: -37.7), controlPoint2: CGPoint(x: -105.44, y: -39.15))
        bezier6Path.addCurve(to: CGPoint(x: -105.72, y: -35.26), controlPoint1: CGPoint(x: -105.47, y: -38.18), controlPoint2: CGPoint(x: -105.77, y: -35.76))
        bezier6Path.addCurve(to: CGPoint(x: -105.12, y: -33.22), controlPoint1: CGPoint(x: -105.65, y: -34.64), controlPoint2: CGPoint(x: -105.12, y: -33.22))
        bezier6Path.addLine(to: CGPoint(x: -103.79, y: -31.24))
        bezier6Path.addLine(to: CGPoint(x: -101.78, y: -29.25))
        bezier6Path.addCurve(to: CGPoint(x: -99.6, y: -27.72), controlPoint1: CGPoint(x: -101.78, y: -29.25), controlPoint2: CGPoint(x: -100.79, y: -28.5))
        bezier6Path.close()
        color.setFill()
        bezier6Path.fill()
        color.setStroke()
        bezier6Path.lineWidth = 1
        bezier6Path.stroke()


        context.endTransparencyLayer()

        context.restoreGState()
    }

}

