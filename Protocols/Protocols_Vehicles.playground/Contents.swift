//: This is from the piece of paper I created of C# Objects using an interface

protocol Name {
    var pname: String { get }
    func move()
    func display()
}

class Vehicle : Name {
    var pname = "Hello from Vehicle" // fulfilling the contract with protocol Name
    private var vname: String!
    init(extVehName n : String) {
        vname = n
    }
    func move() {
        print("A Vehicle moved")
    }
    func display() {
        // fulfilling the contract with protocol Name
    }
}

class Car : Vehicle {
    override func move() {
        print("The \(vname) Car moved")
    }
    override func display() {
        self.move()
        super.move()
    }
}

class Bicycle : Vehicle {
    override func move() {
        print("The \(vname) Bike moved")
    }
    override func display() {
        self.move()
        super.move()
    }
}

// Main program
let car = Car(extVehName: "Prius")
let bike = Bicycle(extVehName: "Trek")

car.display()
bike.display()



