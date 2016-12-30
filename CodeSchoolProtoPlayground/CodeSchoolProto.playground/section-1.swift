/* *** NOTE: You'll need to create a folder called
   ***       ~/Documents/Shared Playground Data/CodeSchoolProto
   ***       In that folder you can put the code-school.png file.
https://www.codeschool.com/blog/2014/12/12/swift-playgrounds-xcplayground/
*/

import UIKit
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)

func pathToFileInSharedSubfolder(file: String) -> String {
    return XCPSharedDataDirectoryPath + "/" + NSProcessInfo.processInfo().processName + "/" + file
}

let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())

// This URL is a hosted version of that API I was using locally in the blog post
session.dataTaskWithURL(NSURL(string: "http://intense-brook-5647.herokuapp.com/notes")!, completionHandler: { (taskData, taskResponse, taskError) -> Void in
    var jsonReadError:NSError?
    let jsonArray = NSJSONSerialization.JSONObjectWithData(taskData, options: nil, error: &jsonReadError) as! [AnyObject]
}).resume()


let view = UIView()
view.frame = CGRectMake(0,0,320,568)
view.backgroundColor = UIColor.lightGrayColor()

let imageView = UIImageView()
imageView.frame = CGRectMake(20, 20, 280, 51)
imageView.image = UIImage(contentsOfFile: pathToFileInSharedSubfolder("code-school.png"))
view.addSubview(imageView)

let label = UILabel()
label.frame = CGRectMake(0, 100, 320, 30)
label.textAlignment = .Center
label.text = "Welcome!"
view.addSubview(label)

XCPCaptureValue("mainView", view)
