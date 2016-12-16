//
//  Utility.swift
//  ArcsAndAnimations
//
//  Created by Adhyam Nagarajan, Padmaja on 12/13/16.
//  Copyright © 2016 Adhyam Nagarajan, Padmaja. All rights reserved.
//

import Foundation
import UIKit
import CoreGraphics

class Utility {
  
  func drawLinearGradient(context:CGContext, rect: CGRect, startcolor startColor: CGColor, endcolor endColor: CGColor) {
    let midColor = UIColor.orange.cgColor
    let colorSpace: CGColorSpace = CGColorSpaceCreateDeviceRGB()
    let locations: [CGFloat]   = [0.0, 0.5, 1.0] // give the locations based on 100%. number of colors == no. of locations
    
    let colors: NSArray =  [startColor,midColor, endColor]
    let gradient:CGGradient  = CGGradient(colorsSpace: colorSpace, colors: colors, locations: locations)!
    let start:CGPoint = CGPoint.init(x: rect.midX, y: rect.minY);
    let end:CGPoint = CGPoint.init(x: rect.midX, y: rect.maxY);
    
    context.saveGState()
    context.addRect(rect)
    context.clip()
    
    context.drawLinearGradient(gradient, start: start, end: end, options: CGGradientDrawingOptions(rawValue: 0))
    context.restoreGState()
    
  }
  
  func rectFor1PcStroke(rect:CGRect) -> CGRect {
    return CGRect(x: rect.origin.x + 0.5, y: rect.origin.y + 0.5, width: rect.size.width - 1, height: rect.size.height - 1)
  }
  
}
