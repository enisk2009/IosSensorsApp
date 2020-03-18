//
//  BarDrawing.swift
//  Sensors
//
//  Created by Ennis  Karzoun on 9/30/19.
//  Copyright © 2019 Ennis  Karzoun. All rights reserved.
//

import Foundation
import UIKit

public class BarDraw: NSObject{


    func drawCanvas3(frame: CGRect = CGRect(x: 0, y: 0, width: 120, height: 340), number: CGFloat = 32) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!

        //// Color Declarations
        let color4 = UIColor(red: 0.939, green: 0.007, blue: 0.007, alpha: 1.000)

        //// Rectangle 2 Drawing
        context.saveGState()
        context.translateBy(x: frame.minX + 0.36384 * frame.width, y: frame.maxY - 181)

        let rectangle2Path = UIBezierPath(rect: CGRect(x: 0, y: -107.29, width: 34, height: 224.02))
        color4.setFill()
        rectangle2Path.fill()

        context.restoreGState()


        //// Rectangle 3 Drawing
        let rectangle3Path = UIBezierPath(rect: CGRect(x: 43, y: 47, width: 34, height: number))
        UIColor.white.setFill()
        rectangle3Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: frame.minX + 29.5, y: frame.minY + 258.9, width: 61, height: 52))
        UIColor.black.setFill()
        ovalPath.fill()
        UIColor.black.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()


        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + 42.86, y: frame.minY + 51.71, width: 34.29, height: 236.59))
        UIColor.black.setStroke()
        rectanglePath.lineWidth = 5.5
        rectanglePath.stroke()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: frame.minX + 39.66, y: frame.minY + 36.71, width: 40.68, height: 20.51))
        UIColor.black.setFill()
        oval2Path.fill()
    }

}
