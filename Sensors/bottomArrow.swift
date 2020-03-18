//
//  bottomArrow.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class bottomArrowDraw: NSObject{
    

func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 170, height: 113), fraction: CGFloat = 1) {
    //// General Declarations
    let context = UIGraphicsGetCurrentContext()!

    //// Color Declarations
    let color = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

    //// Group
    context.saveGState()
    context.translateBy(x: 54.41, y: 139.5)
    context.rotate(by: -90 * CGFloat.pi/180)

    context.setAlpha(fraction)
    context.beginTransparencyLayer(auxiliaryInfo: nil)


    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: 126.38, y: 0.17))
    bezierPath.addCurve(to: CGPoint(x: 47.93, y: 41.17), controlPoint1: CGPoint(x: 126.38, y: 0.17), controlPoint2: CGPoint(x: 41.39, y: 1.44))
    UIColor.black.setStroke()
    bezierPath.lineWidth = 1
    bezierPath.stroke()


    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: 126.38, y: 0.17))
    bezier2Path.addCurve(to: CGPoint(x: 130, y: 14.17), controlPoint1: CGPoint(x: 126.38, y: -1.83), controlPoint2: CGPoint(x: 130, y: 14.17))
    bezier2Path.addCurve(to: CGPoint(x: 62.75, y: 41.17), controlPoint1: CGPoint(x: 130, y: 14.17), controlPoint2: CGPoint(x: 47.57, y: 21.17))
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
    bezier4Path.move(to: CGPoint(x: 48.29, y: 41.17))
    bezier4Path.addLine(to: CGPoint(x: 36, y: 41.17))
    bezier4Path.addLine(to: CGPoint(x: 57.69, y: 61.17))
    bezier4Path.addLine(to: CGPoint(x: 76.49, y: 41.17))
    bezier4Path.addLine(to: CGPoint(x: 62.75, y: 41.17))
    color.setFill()
    bezier4Path.fill()
    UIColor.black.setStroke()
    bezier4Path.lineWidth = 1
    bezier4Path.stroke()


    //// Bezier 6 Drawing
    let bezier6Path = UIBezierPath()
    bezier6Path.move(to: CGPoint(x: 66.4, y: 27.72))
    bezier6Path.addCurve(to: CGPoint(x: 69.3, y: 26.17), controlPoint1: CGPoint(x: 67.34, y: 27.1), controlPoint2: CGPoint(x: 69, y: 26.46))
    bezier6Path.addCurve(to: CGPoint(x: 71.21, y: 25.34), controlPoint1: CGPoint(x: 69.49, y: 25.98), controlPoint2: CGPoint(x: 70.9, y: 25.48))
    bezier6Path.addCurve(to: CGPoint(x: 95.29, y: 18.17), controlPoint1: CGPoint(x: 75.7, y: 23.4), controlPoint2: CGPoint(x: 79.9, y: 21.79))
    bezier6Path.addCurve(to: CGPoint(x: 128.55, y: 13.17), controlPoint1: CGPoint(x: 104.2, y: 16.08), controlPoint2: CGPoint(x: 128.55, y: 13.48))
    bezier6Path.addCurve(to: CGPoint(x: 125.66, y: 2.17), controlPoint1: CGPoint(x: 128.55, y: 12.17), controlPoint2: CGPoint(x: 125.66, y: 2.17))
    bezier6Path.addCurve(to: CGPoint(x: 49.74, y: 40.17), controlPoint1: CGPoint(x: 125.66, y: 2.17), controlPoint2: CGPoint(x: 44.68, y: 4.17))
    bezier6Path.addCurve(to: CGPoint(x: 59.86, y: 46.17), controlPoint1: CGPoint(x: 51.1, y: 49.85), controlPoint2: CGPoint(x: 58.6, y: 45.43))
    bezier6Path.addCurve(to: CGPoint(x: 61.5, y: 41.06), controlPoint1: CGPoint(x: 61.46, y: 47.11), controlPoint2: CGPoint(x: 61.95, y: 43.88))
    bezier6Path.addCurve(to: CGPoint(x: 61.07, y: 40.17), controlPoint1: CGPoint(x: 61.46, y: 40.82), controlPoint2: CGPoint(x: 61.12, y: 40.42))
    bezier6Path.addCurve(to: CGPoint(x: 62.47, y: 42.68), controlPoint1: CGPoint(x: 61.04, y: 40), controlPoint2: CGPoint(x: 62.51, y: 42.86))
    bezier6Path.addCurve(to: CGPoint(x: 60.28, y: 38.01), controlPoint1: CGPoint(x: 62.29, y: 41.8), controlPoint2: CGPoint(x: 60.54, y: 38.73))
    bezier6Path.addCurve(to: CGPoint(x: 60.55, y: 38.82), controlPoint1: CGPoint(x: 60.17, y: 37.7), controlPoint2: CGPoint(x: 60.56, y: 39.15))
    bezier6Path.addCurve(to: CGPoint(x: 60.28, y: 35.26), controlPoint1: CGPoint(x: 60.53, y: 38.18), controlPoint2: CGPoint(x: 60.23, y: 35.76))
    bezier6Path.addCurve(to: CGPoint(x: 60.88, y: 33.22), controlPoint1: CGPoint(x: 60.35, y: 34.64), controlPoint2: CGPoint(x: 60.88, y: 33.22))
    bezier6Path.addLine(to: CGPoint(x: 62.21, y: 31.24))
    bezier6Path.addLine(to: CGPoint(x: 64.22, y: 29.25))
    bezier6Path.addCurve(to: CGPoint(x: 66.4, y: 27.72), controlPoint1: CGPoint(x: 64.22, y: 29.25), controlPoint2: CGPoint(x: 65.21, y: 28.5))
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

