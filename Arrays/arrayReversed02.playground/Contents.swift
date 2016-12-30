//: Playground - noun: a place where people can play


/*
 How to iterate for loop in reverse order in swift?
 
 http://stackoverflow.com/questions/24508592/how-to-iterate-for-loop-in-reverse-order-in-swift
 */

import UIKit

for index in stride(from: 5, to: 1, by: -1) {
    print(index)
}
//prints 5, 4, 3, 2
print("-------------------")

for index in stride(from: 5, through: 1, by: -1) {
    print(index)
}
//prints 5, 4, 3, 2, 1
print("-------------------")

for index in stride(from: 5, through: 1, by: -2) {
    print(index)
}
//prints 5, 3, 1
print("-------------------")
for i in (1...10).reversed() {
    print(i) // prints 10 through 1
}
