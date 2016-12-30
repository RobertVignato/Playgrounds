// -----------------------------------------------------------

// Reverse the elements of a string array
var strArr = ["A1","B2","C3"]
var revArr = strArr.reverse()
var revArrReduced = revArr.reduce("") { $0 + $1 }
print(revArrReduced)
print("strArr has \(strArr.count) items")

print("-----------------------------------------------------------")

// http://stackoverflow.com/questions/30762152/reversing-strings-in-an-array-with-swift

let array = ["lizard", "Rhino", "Monkey"]
let reversed = array.map() { String($0.characters.reverse()) }
print(reversed)
print("array has \(array.count) items")

print("-----------------------------------------------------------")

// Reverse the elements of a int array
var intArr = [1,2,3]
intArr = intArr.reverse()
print(intArr)
print("intArr has \(intArr.count) items")

print("-----------------------------------------------------------")
