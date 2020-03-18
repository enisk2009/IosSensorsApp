//
//  rightArrow.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/29/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class arrowDraw: NSObject{

func drawCanvas1(frame: CGRect = CGRect(x: 0, y: 0, width: 170, height: 113), fraction: CGFloat = 1) {
    //// General Declarations
    let context = UIGraphicsGetCurrentContext()!

    //// Color Declarations
    let color = UIColor(red: 0.169, green: 0.573, blue: 0.961, alpha: 1.000)

    //// Group
    context.saveGState()
    context.setAlpha(fraction)
    context.beginTransparencyLayer(auxiliaryInfo: nil)


    //// Bezier Drawing
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: frame.minX + 25.5, y: frame.minY + 86.5))
    bezierPath.addCurve(to: CGPoint(x: frame.minX + 134.01, y: frame.minY + 45.5), controlPoint1: CGPoint(x: frame.minX + 25.5, y: frame.minY + 86.5), controlPoint2: CGPoint(x: frame.minX + 143.05, y: frame.minY + 85.23))
    UIColor.black.setStroke()
    bezierPath.lineWidth = 1
    bezierPath.stroke()


    //// Bezier 2 Drawing
    let bezier2Path = UIBezierPath()
    bezier2Path.move(to: CGPoint(x: frame.minX + 25.5, y: frame.minY + 86.5))
    bezier2Path.addCurve(to: CGPoint(x: frame.minX + 20.5, y: frame.minY + 72.5), controlPoint1: CGPoint(x: frame.minX + 25.5, y: frame.minY + 88.5), controlPoint2: CGPoint(x: frame.minX + 20.5, y: frame.minY + 72.5))
    bezier2Path.addCurve(to: CGPoint(x: frame.minX + 113.5, y: frame.minY + 45.5), controlPoint1: CGPoint(x: frame.minX + 20.5, y: frame.minY + 72.5), controlPoint2: CGPoint(x: frame.minX + 134.5, y: frame.minY + 65.5))
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
    bezier4Path.move(to: CGPoint(x: frame.minX + 133.5, y: frame.minY + 45.5))
    bezier4Path.addLine(to: CGPoint(x: frame.minX + 150.5, y: frame.minY + 45.5))
    bezier4Path.addLine(to: CGPoint(x: frame.minX + 120.5, y: frame.minY + 25.5))
    bezier4Path.addLine(to: CGPoint(x: frame.minX + 94.5, y: frame.minY + 45.5))
    bezier4Path.addLine(to: CGPoint(x: frame.minX + 113.5, y: frame.minY + 45.5))
    color.setFill()
    bezier4Path.fill()
    UIColor.black.setStroke()
    bezier4Path.lineWidth = 1
    bezier4Path.stroke()


    //// Bezier 6 Drawing
    let bezier6Path = UIBezierPath()
    bezier6Path.move(to: CGPoint(x: frame.minX + 108.46, y: frame.minY + 58.95))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 104.45, y: frame.minY + 60.5), controlPoint1: CGPoint(x: frame.minX + 107.16, y: frame.minY + 59.57), controlPoint2: CGPoint(x: frame.minX + 104.86, y: frame.minY + 60.21))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 101.8, y: frame.minY + 61.33), controlPoint1: CGPoint(x: frame.minX + 104.19, y: frame.minY + 60.69), controlPoint2: CGPoint(x: frame.minX + 102.24, y: frame.minY + 61.19))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 68.5, y: frame.minY + 68.5), controlPoint1: CGPoint(x: frame.minX + 95.59, y: frame.minY + 63.27), controlPoint2: CGPoint(x: frame.minX + 89.79, y: frame.minY + 64.88))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 22.5, y: frame.minY + 73.5), controlPoint1: CGPoint(x: frame.minX + 56.19, y: frame.minY + 70.59), controlPoint2: CGPoint(x: frame.minX + 22.5, y: frame.minY + 73.19))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 26.5, y: frame.minY + 84.5), controlPoint1: CGPoint(x: frame.minX + 22.5, y: frame.minY + 74.5), controlPoint2: CGPoint(x: frame.minX + 26.5, y: frame.minY + 84.5))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 131.5, y: frame.minY + 46.5), controlPoint1: CGPoint(x: frame.minX + 26.5, y: frame.minY + 84.5), controlPoint2: CGPoint(x: frame.minX + 138.5, y: frame.minY + 82.5))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 117.5, y: frame.minY + 40.5), controlPoint1: CGPoint(x: frame.minX + 129.62, y: frame.minY + 36.83), controlPoint2: CGPoint(x: frame.minX + 119.25, y: frame.minY + 41.24))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 115.24, y: frame.minY + 45.61), controlPoint1: CGPoint(x: frame.minX + 115.29, y: frame.minY + 39.57), controlPoint2: CGPoint(x: frame.minX + 114.61, y: frame.minY + 42.79))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 115.83, y: frame.minY + 46.5), controlPoint1: CGPoint(x: frame.minX + 115.29, y: frame.minY + 45.86), controlPoint2: CGPoint(x: frame.minX + 115.76, y: frame.minY + 46.26))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 113.89, y: frame.minY + 43.99), controlPoint1: CGPoint(x: frame.minX + 115.87, y: frame.minY + 46.67), controlPoint2: CGPoint(x: frame.minX + 113.83, y: frame.minY + 43.81))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 116.92, y: frame.minY + 48.66), controlPoint1: CGPoint(x: frame.minX + 114.14, y: frame.minY + 44.87), controlPoint2: CGPoint(x: frame.minX + 116.56, y: frame.minY + 47.94))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 116.55, y: frame.minY + 47.85), controlPoint1: CGPoint(x: frame.minX + 117.08, y: frame.minY + 48.97), controlPoint2: CGPoint(x: frame.minX + 116.54, y: frame.minY + 47.52))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 116.92, y: frame.minY + 51.41), controlPoint1: CGPoint(x: frame.minX + 116.57, y: frame.minY + 48.49), controlPoint2: CGPoint(x: frame.minX + 117, y: frame.minY + 50.91))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 116.09, y: frame.minY + 53.45), controlPoint1: CGPoint(x: frame.minX + 116.83, y: frame.minY + 52.03), controlPoint2: CGPoint(x: frame.minX + 116.09, y: frame.minY + 53.45))
    bezier6Path.addLine(to: CGPoint(x: frame.minX + 114.25, y: frame.minY + 55.44))
    bezier6Path.addLine(to: CGPoint(x: frame.minX + 111.47, y: frame.minY + 57.42))
    bezier6Path.addCurve(to: CGPoint(x: frame.minX + 108.46, y: frame.minY + 58.95), controlPoint1: CGPoint(x: frame.minX + 111.47, y: frame.minY + 57.42), controlPoint2: CGPoint(x: frame.minX + 110.1, y: frame.minY + 58.17))
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

