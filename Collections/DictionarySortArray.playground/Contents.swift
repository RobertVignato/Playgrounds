import Foundation
import UIKit

// http://stackoverflow.com/questions/24090016/sort-dictionary-by-values-in-swift

//var dict = ["cola" : 10, "fanta" : 12, "sprite" : 8]
//var dict = ["C" : 3, "B" : 2, "A" : 1]
//
//var myArr = Array(dict.keys)
//var sortedKeys = sort(&myArr) {
//    var obj1 = dict[$0] // get ob associated w/ key 1
//    var obj2 = dict[$1] // get ob associated w/ key 2
//    return obj1 < obj2
//}
//
//myArr


//var dict = ["cola" : 10, "fanta" : 12, "sprite" : 8]
//var dict = ["C" : 3, "B" : 2, "A" : 1]
//let sortedKeys = (dict as NSDictionary).keysSortedByValueUsingSelector("compare:")
//
//
//let sortedKeys2 = (dict as NSDictionary).keysSortedByValueUsingComparator {
//        ($0 as! NSNumber).compare($1 as! NSNumber)
//}



// http://stackoverflow.com/questions/31739844/swift-2-separating-an-array-into-a-dictionary-with-keys-from-a-to-z
// Using only Swift 2 objects and methods, and with a key for each letter in the alphabet:

//let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".characters.map({ String($0) })
//
//let words = ["Apple", "Banana", "Blueberry", "Eggplant"]
//
//var result = [String:[String]]()
//
//for letter in alphabet {
//    result[letter] = []
//    let matches = words.filter({ $0.hasPrefix(letter) })
//    if !matches.isEmpty {
//        for word in matches {
//            result[letter]?.append(word)
//        }
//    }
//}
//
//print(result)

// -------------------------------------

println("hello" )

//var myArray = ["Apple", "Banana", "Blueberry", "Eggplant"]
var myArray = ["Apple", "Eggplant", "Banana", "Blueberry"]
println( "\"myArray\" is of type: \(_stdlib_getDemangledTypeName(myArray))")

var myDictionary:NSMutableDictionary = NSMutableDictionary()

for eachString in myArray as [NSString] {
    let firstCharacter = eachString.substringToIndex(1)
    println("myArray element: \(eachString) - firstCharacter: \(firstCharacter)")
    // ----------------
    var arrayForCharacter = myDictionary.objectForKey(firstCharacter) as? NSMutableArray
    
    if arrayForCharacter == nil
    {
        arrayForCharacter = NSMutableArray()
        myDictionary.setObject(arrayForCharacter!, forKey: firstCharacter)
    }

    arrayForCharacter!.addObject(eachString)
    println("arrayForCharacter!.addObject(\"\(eachString)\")")

}

println("---------------")
for eachCharacter in myDictionary.allKeys
{
    var arrayForCharacter = myDictionary.objectForKey(eachCharacter) as! NSArray
    println("for character \(eachCharacter) the array is \(arrayForCharacter)")
}










