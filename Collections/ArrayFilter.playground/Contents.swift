import Foundation

let arrObjc: NSArray = ["aaa", "bab", "bbb", "baa", "cbc"]
let arr: [AnyObject] = arrObjc as [AnyObject] //create a swift array with same data

// filter takes a block that returns a boolean. True: keep the item, False: drop it.
arr.filter{
    if let s = $0 as? String {  // first try to cast AnyObject to our expected type.
        return contains(s, "a")   // return true if we want this item, false otherwise.
    } else {
        return false              // this object is of the wrong type, return false.
    }
}