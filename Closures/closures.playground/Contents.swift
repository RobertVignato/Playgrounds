
/* http://fuckingswiftblocksyntax.com

Defining a closure:

Closures are typically enclosed in curly braces { } and are defined by a function type () -> (), where -> separates the arguments and the return type, followed by the in keyword which separates the closure header from its body.
{ (params) -> returnType in
    statements
}
*/

// An example could be the map function applied to an Array:

let padawans = ["Knox", "Avitla", "Mennaus"]
padawans.map({
(padawan: String) -> String in
"\(padawan) has been trained!"
})

// ----------------------------------

let numbers = [1,2,3,4,5]

func add(p: Int) -> Int {
    return p + 10
}

func mul(p: Int) -> Int {
    return p * 10
}

func sub(p: Int) -> Int {
    return p - 1
}

numbers.map({
    (p1: Int) -> Int in add(p1)
})

var a = numbers.map({
    (p1: Int) -> Int in mul(p1)
})
a

var b = numbers.map({a -> Int in sub(a)})
b

// --------------

let people = ["Steve", "Toby", "Joe"]
func concat1(name: String) -> String {
    return name + "!"
}

func concat2(name: String) -> String {
    return name + "!"
}
var s = people.map({
    (p: String) -> String in concat1(p)
})
s
// --------------
// Trying to figure out what "~>" does. From the project "SwiftPlaces - PlaceViewController.swift - line: 48
var t = people.map({
    (s: String) -> String  in {concat1(s)} -> {concat2(s)}
})
t








