//: Playground - noun: a place where people can play

// O'Reilly C# 3.0 Design Patterns - Pg: 14

import UIKit

protocol pComponent {
    func operation() -> String
}
// ------------------------------------------------------------
class Component: pComponent {
    func operation() -> String {
        return " I am walking "
    }
}
// ------------------------------------------------------------
class DecoratorA : pComponent {
    var component: pComponent
    
    init(c: pComponent) {
        component = c
    }
    
//    func decoratorA(c: pComponent) {
//        component = c
//    }
    
    func operation() -> String {
        var s = component.operation()
        s += "and listening to Classic FM "
        return s
    }
}
// ------------------------------------------------------------
class DecoratorB : pComponent {
    var component: pComponent
    let addedState = "past the coffee shop "
    
    init(c: pComponent) {
        component = c
    }
    
    func operation() -> String {
        var s = component.operation()
        s += "to school "
        return s
    }
    
    func addedBehavior() -> String {
        return "and I bought a cuppucinno "
    }
}
// ------------------------------------------------------------
class Client {
    init() {
        print("Client.init!!!")
    }
//    func Display(s: String, c: pComponent) {
//        s + c.operation()
//    }
    func Display() {
        print("hello from client Display()")
    }
    //var component:pComponent = Component()
}
// ------------------------------------------------------------
//func Display(s: String, c: pComponent) {
//    s + c.operation()
//}
//
//print("Decorator Pattern!")
//var component: pComponent
//var f = Client.Display("1. Basic component", c: component)
//f

var client = Client()
client

var component:pComponent = Component()
//client.Display("1. Basic component", c: component)
client.Display()







//
