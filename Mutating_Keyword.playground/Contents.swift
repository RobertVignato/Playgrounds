//: Playground - noun: a place where people can play

// Swift Pocket Pg:110
/* 24 Hours Pg: 148
Swift structs can have instance methods (myMutator), but those instance methods cannot mutate the properties inside a struct (num) by default. To allow them to do so, add the mutating keyword before the "func" keyword of the instance that you want to have change one or more porperty values.
*/


import UIKit

struct MyStruct {
    var num: Int
    mutating func myMutator(p: Int) {
        print(num)
        num += p
        print(num)
    }
}

var myStruct = MyStruct(num: 0)

myStruct.num
myStruct.myMutator(p: 3)
myStruct.num


