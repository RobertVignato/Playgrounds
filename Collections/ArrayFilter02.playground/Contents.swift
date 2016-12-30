import Foundation

let arrObjc: NSArray = ["A", "A", "B", "B", "C"]
let arr: [AnyObject] = arrObjc as [AnyObject] //create a swift array with same data

// filter takes a block that returns a boolean. True: keep the item, False: drop it.
arr.filter{
    if let s = $0  {  // first try to cast AnyObject to our expected type.
        return contains(s, arrObjc)   // return true if we want this item, false otherwise.
    } else {
        return false              // this object is of the wrong type, return false.
    }
}
