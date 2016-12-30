//: How to Work at Google: Example Coding/Engineering Interview
//: https://youtu.be/XKu_SEDAykw?t=656
//: Find the sum of two numbers in a UNSORTED array that equal a "target" number.
//: https://youtu.be/XKu_SEDAykw?t=901

// "Have I seen it in the past?"
// Hash table? Don't need a key... Hash Set?
// "Bool has pair with sum"
// analyze(setOfNumbers, sumOfThatSet)
// Hash Set or Ordered Set?

import UIKit

let array = [4,6,4,1,5,2] // 1,2,3,4,5,6,7,8,9,10,11 posible if adding two numbers
let target = 8

func hasPairWithSum(arrIn: [Int], target: Int) -> Bool {
    
    var arr = arrIn
    var arrTemp = [Int]()
    var dict = [Int: Int]() //[1:2, 2:1]
    
    var objective: Bool = false
    
    // if the sum of the current low and high number are less or more than the target
    
    repeat {
        if arr.count > 1 {
            // Get the first value of arr
            // Check the arrTemp has that value
            // Subtract that from the target
            // If it's not the target, add 8-1 to arrTemp
            print("arr2: \(arr)")
            

            print("arr2: \(arr)")
            print("-----------------")
        } else {
            print("arr2 is empty and the target (\(target)) was not found.")
            return false
        }
        
    } while objective == false
    
    return true
}

var set:Set = [1,2]

set.contains(3)

var t1 = (1,2)
var t2 = (2,1)
if t1 == t2 {
    print("yep")
} else {
    print("nope")
}



/* 
 If the dictionary has:
 - a key of 1
 - a value of 2
 
 
 */

func checkCombinations(a: Int, b:Int) {
    
}
