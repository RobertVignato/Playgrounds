//: Playground - noun: a place where people can play
// http://stackoverflow.com/questions/24051490/multidimensional-arrays-in-swift

import UIKit

var ar1 = ["a","b","c"]
var ar2 = ["d","e","f"]

var ar3 = Array<Array<String>>()
ar3.append(ar1)
print(ar3)
ar3.append(ar2)
print(ar3)