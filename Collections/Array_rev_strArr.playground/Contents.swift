


//: Playground - noun: a place where people can play

// http://stackoverflow.com/questions/26583300/concatenate-string-in-swift
import UIKit

// Input: "Have a nice day!"  Output: "evaH a ecin yad!"
let sentence = "Have a nice day"
var tempArr = [String]()

for i in sentence.characters {
    if i == "e" {
        tempArr.append("3")
        
    } else {
        tempArr.append("\(i)")
    }
}
var revArr = tempArr.reverse()
var final = revArr.reduce("") { $0 + $1 }
print(final)

print("-----------------------------------------------------------")

// http://stackoverflow.com/questions/30762152/reversing-strings-in-an-array-with-swift

let array = ["lizard", "Rhino", "Monkey"]
let reversed = array.map() { String($0.characters.reverse()) }
print(reversed)