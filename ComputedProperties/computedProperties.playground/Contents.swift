//: Playground - noun: a place where people can play

import UIKit

/*   Computed Properties
 
Pocket Guide: 112-114, 117, 156
 
Computed properties do not store a value but are methods that look like properties.
They are defined in terms of a getter (get) and a setter (set).
 
 */

var width: Double = 2
var height: Double = 3
var area: Double {
get { return width * height }
set (newValue) { width = newValue }
}
print(area) // Use the getter
area = 10 // Use the setter
print(area) // Use the getter again


// If the setter is ommited then the get isn't necessary.
var width2: Double = 2
var height2: Double = 3
var area2: Double { return (width2 * height2) }

print(area2)

