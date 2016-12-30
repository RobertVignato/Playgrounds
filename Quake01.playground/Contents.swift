//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

class Quake {
    var id: NSString?
    //var mag: Double?
    var mag: NSString?
    var place: NSString?
    var time: NSString?
    var tsunami: Int?
    var type: NSString?
    var title: NSString?
    
    init(title: String, time: String, mag: String) {
        self.title = title
        self.time = time
        self.mag = mag
    }
    
    init(mag: Double, place: NSString, time: String, tsunami: Int, type: String, title: NSString) {
        //        self.mag = mag
        //        self.place = place
        //        self.time = time
        //        self.tsunami = tsunami
        //        self.type = type
        //        self.title = title
        //    }
    }
    
    class PersistencyManager: NSObject {
        
        /* Declare a private property to hold quake data.
        The array is mutable, so you can easily add and delete quakes. */
        private var quakes = [Quake]()
        
        // In the initializer, you’re populating the "quakes" array above with five sample quakes.
        override init() {
            //Dummy list of quakes
            let quake1 = Quake(title: "M 4.5 - 215km NW of Saumlaki, Indonesia",
                time: "1434476980930",
                mag: "4.5")
            
            let quake2 = Quake(title: "M 1.9 - 24km NE of Ojai, California",
                time: "1434476123700",
                mag: "1.9")
            
            quakes = [quake1, quake2]
        }
        
        func getQuakes() -> [Quake] {
            return quakes
        }
        
        func addQuake(quake: Quake, index: Int) {
            if (quakes.count >= index) {
                quakes.insert(quake, atIndex: index)
            } else {
                quakes.append(quake)
            }
        }
        
        func deleteQuakeAtIndex(index: Int) {
            quakes.removeAtIndex(index)
        }
        
    }
    
    
    
    
    class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        var tableView: UITableView!
        var quakes = [Quake]()
        let items = ["Hello 1", "Hello 2", "Hello 3"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 450)
            self.tableView = UITableView(frame:self.view.frame)
            self.tableView!.dataSource = self
            self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
            self.view.addSubview(self.tableView)
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return self.items.count;
        }
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
            cell.textLabel?.text = "\(self.items[indexPath.row])"
            return cell
        }
    }
    
    var ctrl = ViewController()
    // ctrl.viewDidLoad() //Not needed
    XCPShowView("Playground VC", ctrl.view)
