//: Playground - noun: a place where people can play

import UIKit

// Nerd Ranch Pg: 121

func makeGrowthTracker(forGrowth growth: Int) -> () -> Int {
    var totalGrowth = 0
    func growthTracker() -> Int {
        totalGrowth += growth
        return totalGrowth
    }
    return growthTracker
}
var currentPopulation = 5
let growBy10 = makeGrowthTracker(forGrowth: 10)
print(growBy10()) // 10
currentPopulation += growBy10() // 25
print(growBy10())

//// Me
//var total = 0
//func increase(amount: Int) -> Int {
//    if total == 0 {
//        return amount
//    } else {
//        total += amount
//    }
//    return amount
//}
//
//increase(4)
//increase(5)
