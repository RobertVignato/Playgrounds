//: Playground - noun: a place where people can play

import UIKit
import Foundation

// Pg: 124

// Pg: 402 - Global functions

//let constantArr = [1,2,3]
//startsWith(constantArr, [1,2])

// http://stackoverflow.com/questions/32664543/swift-startswith-method
extension String {
    func startsWith(string: String) -> Bool {
        guard let range = rangeOfString(string, options:[.AnchoredSearch, .CaseInsensitiveSearch]) else {
            return false
        }
        return range.startIndex == startIndex
    }
    
}

let str = "Hello, playground"
let matches    = str.startsWith("hello") //true
let no_matches = str.startsWith("playground") //false

"hello dolly".hasPrefix("hello")  // This will return true
"hello dolly".hasPrefix("abc")  // This will return false
// -----------------

extension Int {
    func startsWith(integer: Int) -> Bool {

    }
    
}
let constantArr = [1,2,3]