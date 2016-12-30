// https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/CollectionTypes.html
import Foundation

class Quake {
    var title: String?
    var time: String?
    var magnitude: Double?
    
    init(title: String, time: String, mag: Double) {
        self.title = title
        self.time = time
        self.magnitude = mag
    }
}

class DataFeed: NSObject { // aka: PersistencyManager
    /* Declare a private property to hold quake data.
    The array is mutable, so you can easily add and delete quakes. */
    private var quakes = [Quake]()
    
    // In the initializer, you’re populating the "quakes" array above with five sample quakes.
    override init() {
        // Proxy list of quakes
        let quake1 = Quake(title: "M 4.5 - 215km NW of Saumlaki, Indonesia",
            time: "1434476980930",
            mag: 4.5)
        
        let quake2 = Quake(title: "M 1.9 - 24km NE of Ojai, California",
            time: "1434476123700",
            mag: 1.9)
        quakes = [quake1, quake2]
    }
    
    func getQuakes() -> [Quake] {
        return quakes
    }
}

// This works, use it to test, but we want the data to come from the Repository...
//var DataFeed = DataFeed()
//DataFeed.getQuakes()

class LibraryAPI: NSObject { // Store data here for use in the View
    
    private let dataFeed: DataFeed // aka persistenceyManager: PersistencyManager
    // ------------------------------------------------------------------------
    
    /* 1 - Create a class variable as a computed type property. The class variable is something you can call without having to instantiate the class LibraryAPI */
    class var sharedInstance: LibraryAPI { // "class var" = Hidden from instances of the class
        /* 2 - Nested within the class variable is a struct called Singleton.*/
        struct Singleton {
            /* 3 - Singleton wraps a static constant variable named instance. Declaring a property as static means this property only exists once. Also note that static properties in Swift are implicitly lazy, which means that Instance is not created until it’s needed. Also note that since this is a constant property, once this instance is created, it’s not going to create it a second time. This is the essence of the Singleton design pattern. The initializer is never called again once it has been instantiated.*/
            static let instance = LibraryAPI() // The static constant variable.
        }
        // 4 - Returns the computed type property.
        return Singleton.instance
    }
    // ------------------------------------------------------------------------
    override init() {
        dataFeed = DataFeed()
        
        /* The HTTP client doesn’t actually work with a real server and is only here to demonstrate the usage of the facade pattern, so isOnline will always be false. */
        //httpClient = HTTPClient()
        
        /* isOnline determines if the server should be updated with any changes made to the albums list, such as added or deleted albums. */
        //isOnline = false
        
        super.init()
    }
    // ------------------------------------------------------------------------
    func getQuakes() -> [Quake] {
        return dataFeed.getQuakes()
    }
}

import UIKit
import XCPlayground

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView!
    
    private var allQuakes = [Quake]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allQuakes = LibraryAPI.sharedInstance.getQuakes()
        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 450)
        self.tableView = UITableView(frame:self.view.frame)
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        //return self.items.count;
        return self.allQuakes.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = "\(allQuakes[indexPath.row].title!)"
        return cell
    }
}

var ctrl = ViewController()
// ctrl.viewDidLoad() //Not needed
XCPShowView("Playground VC", ctrl.view)


// ====================================================================
// ====================================================================
// ====================================================================
// ====================================================================

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
// ====================================================================
// ====================================================================
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



