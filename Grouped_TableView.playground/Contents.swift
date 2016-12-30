//: Playground - noun: a place where people can play

import UIKit

// Swift Grouped TableView - indexPathForSelectedRow repeats


func getIndex(section: Int, row: Int) -> Int {
    var index = 1
    for var s = 1; s < section; s++ {
        index++
        for var r = 1; s < row; s++ {
            index++
        }
    }
    return index
}

var x = getIndex(0, 1)
println(x)