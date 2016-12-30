//: Playground - noun: a place where people can play
// http://www.techotopia.com/index.php/Working_with_Array_and_Dictionary_Collections_in_Swift
// http://www.codingexplorer.com/arrays-swift/

import UIKit
/* NOTES

*/
// ---------------------------------------------
// ---------------------------------------------
// ---------------------------------------------

let randRange = 20
var rn: Int
var min: Int
var max: Int
var geoPoints = [Int]()

for gp in 1...50 {
    rn = Int(arc4random()) % randRange
    if geoPoints.isEmpty || geoPoints.count < 5 {
        geoPoints.insert(rn, atIndex: 0)
    } else {
        geoPoints.insert(rn, atIndex: 0)
        geoPoints.removeLast()
    }
    if geoPoints.count >= 5 {
        min = geoPoints.minElement()! as Int
        max = geoPoints.maxElement()! as Int
        print("gp = \(gp) \(geoPoints) - min: \(min) max: \(max)")
    }
    if gp % 5 == 0 {
        // Determine the smallest proximity value (cl:Double) over the last n interations.
        // Use that to return and "Back Up" to it from where you currently are.
        print("gp = \(gp)")
    }
}

// ---------------------------------------------
/*
let randRange = 20
var rn: Int
var min: Int
var max: Int
var geoPoints = [Int]()

for gp in 1...10 {
    print("gp = \(gp)")
    rn = Int(arc4random()) % randRange
    if geoPoints.isEmpty || geoPoints.count < 5 {
        geoPoints.insert(rn, atIndex: 0)
    } else {
        geoPoints.insert(rn, atIndex: 0)
        geoPoints.removeLast()
    }
    //if geoPoints.count >= 5 {
    if gp % 5 == 0 {
        min = geoPoints.minElement()! as Int
        max = geoPoints.maxElement()! as Int
        print("gp = \(gp) \(geoPoints) - min: \(min) max: \(max)")
    }
}
*/
// ---------------------------------------------

/*
let randRange = 20
var rn: Int
var min: Int
var max: Int
var geoPoints = [Int]()

for gp in 1...10 {
    rn = Int(arc4random()) % randRange
    if geoPoints.isEmpty || geoPoints.count < 5 {
        //geoPoints.append(rn)
        geoPoints.insert(rn, atIndex: 0)
    } else {
        //geoPoints.removeAtIndex(0)
        //geoPoints.append(rn)
        geoPoints.insert(rn, atIndex: 0)
        geoPoints.removeLast()
    }
    min = geoPoints.minElement()! as Int
    max = geoPoints.maxElement()! as Int
    print("\(geoPoints) - min: \(min) max: \(max)")
}
*/

// ---------------------------------------------

//let numberRange = 20
//var rn = Int(arc4random()) % numberRange
//var geoPoints = [5,3,4,2,6,1]
//geoPoints.removeAtIndex(0)
//geoPoints.append(rn)
//var m = min(11,9)
//geoPoints.maxElement()
//geoPoints.minElement()

//var tempNum = 0
//for gp in geoPoints {
//    if gp > tempNum {
//        tempNum = gp
//        print("tempNum: \(tempNum)")
//    } else {
//        
//    }
//}



class Point: NSObject {
    
    var latitude: Double?
    var longitude: Double?
    var distance: Int?
    
    init(latitude: Double, longitude: Double, distance: Int) {
            self.latitude = latitude
            self.longitude = longitude
            self.distance = distance
    }
    
    func setPoint(lat: Double, lon: Double, str: Int) {
        latitude = lat
        longitude = lon
        distance = str
    }
    
}
