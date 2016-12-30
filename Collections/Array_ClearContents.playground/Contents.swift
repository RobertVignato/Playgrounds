//: Playground - noun: a place where people can play

import UIKit

//import Foundation

class Quake {
    var title: String?
    init(title: String) { self.title = title }
    var description: String {
        return "title: \(title)"
    }
}

var quakes = [Quake]()

var title = "M 1.0 San Diego"

quakes.append(Quake(title: title))

title = "M 2.0 Los Angeles"

quakes.append(Quake(title: title))

quakes.count

quakes.removeAll(keepCapacity: false) // ------ crux

quakes.count

println("q \(quakes.description)") // How do you use "description" ?
