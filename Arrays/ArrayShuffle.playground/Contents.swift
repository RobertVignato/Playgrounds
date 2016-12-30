//: Playground - noun: a place where people can play

import UIKit

// http://stackoverflow.com/questions/24026510/how-do-i-shuffle-an-array-in-swift



extension MutableCollection where Indices.Iterator.Element == Index {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            swap(&self[firstUnshuffled], &self[i])
        }
    }
}

extension Sequence {
    /// Returns an array with the contents of this sequence, shuffled.
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

let x = [1, 2, 3].shuffled()
// x == [2, 3, 1]

let fiveStrings = stride(from: 0, through: 100, by: 5).map(String.init).shuffled()
// fiveStrings == ["20", "45", "70", "30", ...]

var numbers = [1, 2, 3, 4]
numbers.shuffle()
// numbers == [3, 2, 1, 4]













/// -------------------------

// https://www.hackingwithswift.com/example-code/arrays/how-to-shuffle-an-array-in-ios-8-and-below

//extension Array {
//    mutating func shuffle() {
//        for i in 0 ..< (count - 1) {
//            let j = Int(arc4random_uniform(UInt32(count - i))) + i
//            swap(&self[i], &self[j])
//        }
//    }
//}
//
//
//var nums = [1,2,3]
//
////var x:[Int] = nums.shuffle()
//
//print(nums.shuffle())
