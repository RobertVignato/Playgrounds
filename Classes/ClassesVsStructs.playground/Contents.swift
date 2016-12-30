
import UIKit



// 24hrs. 148
struct structPoint {
    var x: Double
    var y: Double
    
    mutating func moveToZero() {
        self.x = 0.0
        self.y = 0.0
    }
}
var point1 = structPoint(x: 3.5, y: 6.0)
point1.moveToZero()


// ------------------------------------


class classPoint {
    var x: Double?
    var y: Double?
    
    func moveToZero() {
        self.x = 0.0
        self.y = 0.0
    }
}

var point2 = classPoint()
point2.x = 3.5
point2.x
point2.moveToZero()
point2.x

// ------------------------------------

class myClass {
    var a: Int = 0
    func add(num:Int) -> Int {
        var b = 2
        return b + num
    }
}
var x = myClass()
x.a = 3
var t = x.add(2)
t
