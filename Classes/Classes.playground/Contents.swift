//: Playground - noun: a place where people can play

import UIKit

class myClass {
    var a: Int = 0
    func add(ext num:Int) -> Int {
        let b = 2
        return b + num
    }
}


var x = myClass()
x.a = 3

var t = x.add(ext: 2)
t
