// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html
import Foundation

class Pet: NSObject {
    var name: String?
    var age: Double?
    
    init(name: String, age: Double) {
        self.name = name
        self.age = age
    }
    
    override var description: String {
        return "name: \(name)  age: \(age)"
    }
}
var petInstance = [Pet]()
var petName = "Teddy"
var petAge = 13.0
petInstance.append(Pet(name: petName, age: petAge))
petInstance.count
petInstance.description
petName = "Romy"
petAge = 12.7
petInstance.append(Pet(name: petName, age: petAge))
petInstance.count
petInstance.description

// ====================================================================

class Person: NSObject {
    var name: String?
    
    init(name: String) {
        self.name = name
    }
    
    override var description: String {
        return "name: \(name)"
    }
}

var person = [Person]()
var name = "Jesus"
person.append(Person(name: name))
person.count
name = "Peter"
person.append(Person(name: name))
person.count
person.description



