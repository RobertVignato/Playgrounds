//: Playground - noun: a place where people can play

import UIKit

// not mutable
var dict1 = [:]
dict1 = ["A" :  1]
println("dict1: \(dict1)")
//dict1["B"] =  2
// > error: cannot assign to the result of this expression


// mutable
var dict2:NSMutableDictionary = [:]
dict2 = ["A" :  1]
println("dict2: \(dict2)")
dict2["B"] =  2
println("dict2: \(dict2)")


