// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Declarations.html#//apple_ref/doc/uid/TP40014097-CH34-ID545

// Using the "inout" keyword preceding (Swift2) of after (Swift3) a functions parameter enables an externally declared variable to be modified by the functions body. Note the use of the "&"

import UIKit


// -------- Using "inout" -----------
var m = 1
print("\"i\" equals: \(m)")

func addOne( i: inout Int) -> Int {
    i = m + 1
    return i
}
addOne(i: &m)
print("\"i\" now equals: \(m)")


print("----------------------------------")


// -------- Not using "inout" -----------
var a = 1
print("\"a\" equals: \(a)")

func addOneB(b: Int) -> Int {
    let c = b + 1
    return c
}
addOneB(b: a)
print("\"a\" now equals: \(a)")

