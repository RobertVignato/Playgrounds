//: Playground - noun: a place where people can play

import UIKit

//func sortFunc(num1: Int, num2: Int) -> Bool {
//    return num1 < num2
//}
//
//let numbers = [0, 2, 3, 5, 10, 2]
//let sortedNumbers = sort(numbers, sortFunc)
//
//var numbers = [0, 2, 3, 5, 10, 2]
//numbers.sort {
//    return $0 < $1
//}


//var arr = [-8, 0, 5, 4, -1, 6]
//let sortedArr = sorted(arr) { $0 < $1 }
//sortedArr


var volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(i: Int, j: Int) -> Bool {
    return i < j
}

let volunteersSorted = volunteerCounts.sort(sortAscending)

func sortDescending(i: Int, j: Int) -> Bool {
    return i > j
}

let volunteersSorted2 = volunteerCounts.sort(sortDescending)