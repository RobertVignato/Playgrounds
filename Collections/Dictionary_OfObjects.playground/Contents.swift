//: Playground - noun: a place where people can play

import UIKit

class Spaceship {
    var fuel: Double?
    var id: String? // 1701
    var shipStatusData: [Int : String]?
//    init (vesselID id: String, fuelCapacity fuel: Double) {
//        self.id = id
//        self.fuel = fuel
//    }
    func getShipStatus() -> [Int:String] {
        
        return self.fuel
    }
}

class Warship : Spaceship {
    var weapons: Int?
//    init(weapons: Int) {
//        self.weapons = weapons
//    }
    func firePhotonTorpedo(power: Double) -> String {
        self.logEvent(eventId: 1, eventSummary: "PT dispatched")
        return "Photon Torpedo fired at power level: \(power)"
    }
    func logEvent(eventId id: Int, eventSummary summary: String) {
        
    }
}

class Cargoship : Spaceship {
    var storage: Int?
//    init(storage: Int) {
//        self.storage = storage
//    }
}

let warshipR01 = Warship()
warshipR01.fuel = 500
warshipR01.weapons = 4
let x = warshipR01.firePhotonTorpedo(2.5)
print(x)



var y = [NSFontAttributeName : UIFont(name: "Courier", size: 21)!, NSForegroundColorAttributeName : UIColor.whiteColor()]