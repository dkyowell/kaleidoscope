//
//  CircleView.swift
//  Kaleidoscope
//
//  Created by David Yowell on 6/28/17.
//  Copyright © 2017 David Yowell. All rights reserved.
//

import UIKit

extension Int {
    var degreesToRadians: Double { return Double(self) * .pi / 180 }
}
extension FloatingPoint {
    var degreesToRadians: Self { return self * .pi / 180 }
}

class CircleView: UIView {
    var numberOfPoints = 500
    var multiplier = 2
    
    override func draw(_ rect: CGRect) {
        let smallestSide = min(rect.size.width, rect.size.height)
        let radius = smallestSide / 2
        
        var points = [CGPoint]()
        for j in 0..<numberOfPoints {
            let degree = Double(j) * (360 / Double(numberOfPoints))
            let radians = degree.degreesToRadians
            let x = radius + radius * CGFloat(sin(radians))
            let y = radius + radius * CGFloat(cos(radians))
            let point = CGPoint(x: x, y: y)
            points.append(point)
        }
        
        let mPath = UIBezierPath()
        for j in 1..<numberOfPoints {
            let point1 = points[j]
            let point2 = points[(j*multiplier) % numberOfPoints]
            mPath.move(to: point1)
            mPath.addLine(to: point2)
        }
        mPath.lineWidth = 0.5
        UIColor.red.setStroke()
        mPath.stroke()
        
        // Drawing code here.
    }
    
}
