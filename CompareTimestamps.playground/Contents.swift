//: Playground - noun: a place where people can play

import UIKit

var t1 = "2015-08-29T05:07:05+00:00"
var t2 = "2015-08-29T05:07:05+00:00"
var t3 = "2015-08-29T05:07:05+00:03"


func compareTimeStamps(T1:String, T2:String) {
    if T1 == T2 {
        println("equal")
    }
    else {
        println("nope")
    }
}

compareTimeStamps(t1, t2)


// https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    println("These two strings are considered equal")
}