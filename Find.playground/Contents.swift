// https://www.reddit.com/r/swift/comments/2aw12n/writing_an_extension_for_arrays_specifically_of/

import UIKit

let arr = [4, 6, 2, 3]

if arr.indexOf(6) != nil {
    // found it!
    print("y")
} else {
    print("n")
}


let arr2 = ["a", "b", "c"]

if arr2.indexOf("b") != nil {
    // found it!
    print("y")
} else {
    print("n")
}

var quakes:NSDictionary = [
      "p" : "Oklahoma"
    , "pl" : "Alaska"
    , "pla" : "Alaska"
    , "plac" : "Islands"
    , "place" : "Japan"
    , "place" : "Rico"
    , "place" : "Rico"
    , "place" : "Hawaii"
]

//var x:NSDictionary = ["a": "A" , "a": "B"]

for place in quakes {
    print("place in quakes: \(place)")
}

var regions: NSDictionary = ["place": "A" , "place": "B"]

if let x = regions["place"] { // ---------------------------------- Find
    print("Yep")
}

//for region in regions {
//    // if region is not in array, add it
//    if !contains(regions, element: region) { // contains is a Set operation
//        print("!contains: \(region)")
//        // insert into temp arr
//    } else if contains(regions, element: region) {
//        // increment
//        print("contains: \(region)")
//    }
//}
