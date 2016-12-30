//: Playground - noun: a place where people can play

import UIKit


// 1
let reposURL = NSURL(string: "http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/1.0_hour.geojson")
// 2
if let JSONData = NSData(contentsOfURL: reposURL!) {
    // 3
    if let json = NSJSONSerialization.JSONObjectWithData(JSONData, options: nil, error: nil) as? NSDictionary {
        if let item: AnyObject = json[0] {
            if let type = item["type"] {
                println(type)
//                if let age = person["age"] {
//                    println(age)
//                }
            }
        }
    }
}
