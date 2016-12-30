//: Playground - noun: a place where people can play


// http://stackoverflow.com/questions/24437388/whats-the-underscore-representative-of-in-swift-references


class A {
    func test(firstName: String!, lastName: String!) -> String {
        return firstName + " " + lastName + "!"
    }
}
var a = A()
a.test("Rob", lastName: "Vig")

class B {
    func test(firstName: String!, _ lastName: String!) -> String { // Notice the "_"  (underscore)
        return firstName + " " + lastName + "!!"
    }
}
var b = B()
//b.test("Rob", lastName: "Vig")  // Notice the "_"  (underscore) in the def above?
b.test("Robby", "V") // Using the underscore in the def lets us call the instance method without having to name the second parameter



