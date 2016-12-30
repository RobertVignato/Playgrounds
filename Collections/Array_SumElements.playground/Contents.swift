//: Playground - noun: a place where people can play

import UIKit

// HackerRank Question

// ========================================================

// number of elements
var n = 6 //Int(readLine()!)!

// read array
var arr = [1, 2, 3, 4, 10, 11] //readLine()!.characters.split(" ").map(String.init)

// variable to hold the sum of the array elements
var sum = 0

for (var i = 0; i < n; i++) {
    //print(arr[i])
    sum += arr[i]
}

// print the array elements
print(sum)

// ========================================================
