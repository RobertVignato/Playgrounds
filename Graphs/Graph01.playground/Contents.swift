//: Playground - noun: a place where people can play


import Foundation
import UIKit
import XCPlayground

//// Color Declarations
let color = UIColor(red: 0.497, green: 0.497, blue: 0.497, alpha: 1.000)

//// Rectangle Drawing
let rectanglePath = UIBezierPath(rect: CGRectMake(0, 0, 10, 1))
color.setFill()
rectanglePath.fill()


