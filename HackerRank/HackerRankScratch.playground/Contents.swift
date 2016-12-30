//: Playground - noun: a place where people can play

import UIKit

// ========================================================

func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}

areaOfTriangle(withBase: 3.0, andHeight: 5.0)

// ========================================================

var n = 10
var d = { n / 2 }
