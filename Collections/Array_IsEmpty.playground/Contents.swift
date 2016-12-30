
import UIKit

// Nerdranch Pg:86 Bronze
var arr1 = [AnyObject]()

if arr1.isEmpty {
    print("arr is NOT empty")
} else if arr1.isEmpty == false {
    print("arr IS empty")
}


// Nerdranch Pg:86 Silver
var strArr = ["A1","B2","C3"]
var revArr = strArr.reverse()
var revArrReduced = revArr.reduce("") { $0 + $1 }
print(revArrReduced)



