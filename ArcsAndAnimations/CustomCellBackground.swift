//
//  CustomCellBackground.swift
//  ArcsAndAnimations
//
//  Created by Adhyam Nagarajan, Padmaja on 12/12/16.
//  Copyright © 2016 Adhyam Nagarajan, Padmaja. All rights reserved.
//

import Foundation
import UIKit

class CustomCellBackground: UIView {

  override func draw(_ rect: CGRect) {
    let context:CGContext = UIGraphicsGetCurrentContext()!
    let whiteColor:UIColor = UIColor.white
    let lightgray:UIColor = UIColor(colorLiteralRed: 200.0/255.0, green: 200.0/255.0, blue: 200.0/255.0, alpha: 1.0)
    
    let paperRect:CGRect = self.bounds
    Utility().drawLinearGradient(context: context, rect: paperRect, startcolor: whiteColor.cgColor, endcolor: lightgray.cgColor)
    
    var strokeRect:CGRect = paperRect
    strokeRect.size.height = strokeRect.size.height-1
    strokeRect = Utility().rectFor1PcStroke(rect: strokeRect)
    
    context.setStrokeColor(UIColor.white.cgColor)
    context.setLineWidth(1.0)
    context.stroke(strokeRect)
  }
}
