//: Playground - noun: a place where people can play

import UIKit

var myIntA = 1
var myIntB = 2
var myStrA = "Hello"
var myStrB = " World!"

func swapTwoValues<T>(inout a: T, inout _ b: T) {
    let tempA = a
    a = b
    b = tempA
}

swapTwoValues(&myIntA, &myIntB)
