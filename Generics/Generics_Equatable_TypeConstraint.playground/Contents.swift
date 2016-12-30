//: Playground - noun: a place where people can play

/* 24 Hours Pg: 316
The Equatable protocol type constraint works on types and not Dictionaries
*/

import UIKit

var myIntA = 1
var myIntB = 2
var myIntC = 2
var myStrA = "Hello"
var myStrB = " World!"
var myStrC = " World!"

func areTheseEqual<T: Equatable>(a: T, b: T) -> Bool {
    return a == b // "==" is required by the Equatable protocol
}

areTheseEqual(myIntA, b: myIntB)
areTheseEqual(myIntC, b: myIntB)

areTheseEqual(myStrA, b: myStrB)
areTheseEqual(myStrC, b: myStrB)