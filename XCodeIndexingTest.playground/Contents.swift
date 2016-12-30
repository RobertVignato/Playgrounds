import Foundation
import UIKit

class Vendor {
    var busCat01: String?
    var companyDescription: String?
    var companyName: String?
    init(
        busCat01: String?
        , companyDescription: String?
        , companyName: String?
        ) {
            self.busCat01 = busCat01
            self.companyDescription = companyDescription
            self.companyName = companyName
    }
    required init() {
        print("Vendor.required init()")
    }
}

class JSONFeed: NSObject {
    var busCat01: String?
    var companyDescription: String?
    var companyName: String?
    var vendors = [Vendor]()
    
    override init() {
        print("JSONFeed.init()")
    }
    
    func getVendors() {
        print("JSONFeed.getVendors()")
        for i in 0...3 {
            busCat01 = "cat \(i)"
            companyDescription = "descr \(i)"
            companyName = "name \(i)"
            
            vendors.append(Vendor(
                busCat01: busCat01!
                , companyDescription: companyDescription!
                , companyName: companyName!
            ))
            print("JSONFeed.getVendors().forLoop")
        }
    }
    func getVendors() -> [Vendor] {
        return vendors
    }
}

class LibraryAPI: NSObject { // A singleton class to MANAGE all the Vendor data.
    private let jsonFeed: JSONFeed
    class var sharedInstance: LibraryAPI {
        let instance = LibraryAPI()
        return instance
    }
    override init() {
        jsonFeed = JSONFeed()
        super.init()
    }
    func getVendors() -> [Vendor] {
        return jsonFeed.getVendors()
    }
}

var vendors = [Vendor]()
vendors = LibraryAPI.sharedInstance.getVendors()
print("\(vendors)")


print("anything?")




/*

Initially intended to rework the way OCD consumes JSON. I created the JSONCoreData project. It had the usual XCode 7.1 indexing issue whereby it does not compile. I found out that I had some of the fields wrong in the HerokuFEED.swift/JSONFeed.swift getVendors() function. After correcting the fields I noticed XCode won't compile and index after n number of fields...

init(
busCat01: String?
, companyDescription: String?
, companyName: String?
, latLong: String?
, latitude: Double?
, longitude: Double?
, majorID: Int?
, minorID: Int?
, uuID: String?
, webPageUrl: String?
, isGeneralListing: Bool?
, isDiscountMap: Bool?
, isBeaconWeb: Bool?
, isTrolleyHQ: Bool?
//        , isTrolleyStop: Bool?
//        , isTrolleyTickets: Bool?

If I comment out isTrolleyHQ leaving only 13 fields, it will compile! But the 14th field is too many for XCode to deal with.




http://stackoverflow.com/questions/24782721/xcode-swift-indexing-forever?rq=1

"For my part, the definition of a literal dictionary containing all device models caused an endless indexing ... After removing this statement, XCode accepts to work again. This is very strange!"

"I had the same issue in my code. The solution for me was delete all spaces in the array in my code."

*** "Too many string concatenations in one line cause troubles. Helped me too."

http://stackoverflow.com/questions/24310246/xcode-6-beta-not-compiling


prompt:  defaults write com.apple.dt.XCode IDEIndexDisable 1

*/