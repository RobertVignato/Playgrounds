//: Playground - noun: a place where people can play

import UIKit

/* Pg: 93 Pocket Reference

the "class" keyword before "func" hides the function from instances of the class it's declared in. This means it's used only within the class. Eq to "protected" in C# */

class a {
    
    // Note the use of the 'class' keyword in front?
    class func addOne(input:Int) -> Int {
        return input + 1
    }
    
    func addOneFunc(input:Int) -> Int {
        let result = a.addOne(input)
        return result
    }
    
    // -------------
    
    func subtractOne(input:Int) -> Int {
        return input - 1
    }
    
    func subtractOneFunc(input:Int) -> Int {
        let result = subtractOne(input)
        return result
    }
}

var classA = a()
classA.addOneFunc(5)

classA.subtractOne(10)
classA.subtractOneFunc(4)

// --------- Note the intellisense? Notice how "addOne()" doesn't show up in the list?

//classA.
