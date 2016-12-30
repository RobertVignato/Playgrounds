//: How to Work at Google: Example Coding/Engineering Interview
//: https://www.youtube.com/watch?v=XKu_SEDAykw

//: Find the sum of two numbers in a SORTED array that equal a "target" number.
//: The smallest posible sum is the first two numbers.
//: The largest posible sum is the last two numbers.

import UIKit

let array = [1,2,4,5,6] // 1,2,3,4,5,6,7,8,9,10,11 posible if adding two numbers
let target = 11

func analyze(arr: [Int], target: Int) -> Bool {
    
    var arr2 = arr // arr is immutable. This is so you can modify the input
    var low = arr2.first! // or var low = arr2[0]
    var high = arr2.last! // or var high = arr2[arr2.count - 1]
    var objective:Bool = false

    // if the sum of the current low and high number are less or more than the target

    repeat {
        if arr2.count > 1 {
            print("arr2: \(arr2) - low: \(low) + high: \(high) = sum: \(low + high)")
            
            if (low + high) == target {
                objective = true
                print(">>>BAM!<<< target number achieved! \(target)")
                return true
            } else if (low + high) < target {
                objective = false
                print("if (low + high) < target (\(target)) - arr2.removeFirst()")
                arr2.removeFirst()
                //low = arr2[0]
                low = arr2.first!
            } else if (low + high) > target {
                objective = false
                print("if (low + high) > target (\(target)) - arr2.removeLast()")
                arr2.removeLast()
                //high = arr2[arr2.count - 1]
                high = arr2.last!
            }
            
            print("arr2: \(arr2)")
            print("-----------------")
        } else {
            print("arr2 is empty and the target (\(target)) was not found.")
            return false
        }

    } while objective == false
    
    return true
}

func sum(x: Int, y: Int) -> Int {
    return x + y
}

analyze(arr: array, target: target) // Change the "target" number to the number 3 thru 11.


