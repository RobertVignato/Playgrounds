
// Pg: 93 Pocket Reference

class A {
    
    // Note the use of the 'class' keyword in front? This means it can't be overridden.
    class func addOne(input:Int) -> Int {
        return input + 1
    }
    
    func addOneFunc(input:Int) -> Int {
        let result = A.addOne(input: input) // need "A." because of the "class" in front of "func"
        return result
    }
    
    // -------------
    
    func subtractOne(input:Int) -> Int {
        return input - 1
    }
    
    func subtractOneFunc(input:Int) -> Int {
        let result = subtractOne(input: input)
        return result
    }
}

// -------------------------------

class B : A {

    // Can't call and override a function that uses the 'class' keyword
//    override func addOne(input:Int) -> Int {
//        return input + 2
//    }
    
    override func addOneFunc(input:Int) -> Int {
        var result = A.addOne(input: input)
        let anotherOne: Int = 1
        result = result + anotherOne
        return result
    }
}

// -------------------------------

var classA = A()
classA.addOneFunc(input: 2)
classA.subtractOne(input: 2)

var classB = B()
classB.addOneFunc(input: 2)
classB.subtractOne(input: 2)
