

/* 
The sorted() function -

Swift’s standard library provides a function called sorted, which sorts an array of values of a known type, based on the output of a sorting closure that you provide. Once it completes the sorting process, the sorted function returns a new array of the same type and size as the old one, with its elements in the correct sorted order. The original array is not modified by the sorted function.

https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html
*/

import UIKit

let array = ["B","A","C","F","E"]


func descending(x : String, y: String) -> Bool {
    return x < y
}
var forward = sorted(array, descending)
println((forward))


func ascending(x : String, y: String) -> Bool {
    return x > y
}
var reverse = sorted(array, ascending)
println((reverse))
