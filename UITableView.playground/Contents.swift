// https://gist.github.com/watert/13c38d269ea15aa8360f
// Turn on the Assistant Editor to see the UI

import UIKit
import XCPlayground

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var tableView: UITableView!
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





