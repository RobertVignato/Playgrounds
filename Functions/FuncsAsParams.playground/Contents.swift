//: Playground - noun: a place where people can play

import UIKit

// 24 hours - Pg:123

func square(num: Int) -> Int {
    return num * num
}
func mapEachElement(inArray arr: [Int], withFunc afunc: (Int) -> Int) -> [Int] {
    var returnArray = [Int]()
    for num in arr {
        returnArray.append(afunc(num)) // <<< ---- the magic
    }
    return returnArray
}
let firstArray = [1,2,3,4,5]
let squareArray = mapEachElement(inArray: firstArray, withFunc: square)

// ---------------------------------

func addOne(num: Int) -> Int {
    return num + 1
}
let arr2 = [100,101,102,103,104]
let addOneArray = mapEachElement(inArray: arr2, withFunc: addOne)