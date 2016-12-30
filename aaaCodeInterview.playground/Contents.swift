
import Foundation
/// http://www.mathsisfun.com/area.html
/// https://www.raywenderlich.com/110982/swift-interview-questions-answers


// Function as a return type

func A() -> (Int, Int) -> Int {
    func B(x: Int, y: Int) -> Int {
        return x * y
    }
    return B
}

// Reverse an Array

var arr = [1,2,3,4,5,6]
var arrRev:[Int] = arr.reversed()



// Sort an array
var arr2 = ["c","b","a","g","f","e"]
arr2.sort()


// Reverse a Dictionary
// http://stackoverflow.com/questions/30969688/ordered-dictionary-in-swift



// Do something for every 5th element in an Array



// Do something for every 5th element in an Dictionary



// Count the number of unique values in an array



// Pass a function as an argument



// Closure syntax



// Delegate pattern


// Demonstrate Optinals


// Create an Equitable Generic


// Shuffle an array


// ----------
