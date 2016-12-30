
import UIKit

// Sams 24 Hours Pg: 140 ------------------------------------

struct Rect {
    var x = 0.0, y = 0.0, width = 0.0, height = 0.0;
    
    func area() -> Double {
        return (width * height)
    }
    
    mutating func embiggenBy(size: Double) {
        width += size
        height += size
    }
    
    func add(num1: Int) -> Int {
        var x = 2
        return num1 + x
    }
}

var rect = Rect(x: 2, y: 3, width: 4, height: 5)

rect.area()
rect.embiggenBy(2)
rect.add(1)



// Sams 142 ------------------------------------
struct Point {
    var x: Double
    var y: Double
    
    func distanceTo(#point: Point) -> Double {
        let a = abs(self.x - point.x)
        let b = abs(self.y - point.y)
        let c = sqrt(a * a + b * b)
        return c
    }
}
let pointA = Point(x: 1.0, y: 2.0)
let pointB = Point(x: 4.0, y: 6.0)
let distanceA = pointA.distanceTo(point: pointB)