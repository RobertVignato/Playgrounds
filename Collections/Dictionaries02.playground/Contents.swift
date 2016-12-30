//: Playground - noun: a place where people can play

import UIKit


var feeds = Dictionary<String,String>()
feeds["A"] = "a"
feeds
feeds["B"] = "b"
feeds
feeds.removeValueForKey("B")
feeds
feeds.removeAll(keepCapacity: true)
feeds.count
feeds["C"] = "c"
feeds
feeds.removeAll(keepCapacity: false) // What's the diff? Need to find out
feeds.count
feeds["D"] = "d"
feeds



// -----------------------

var feedDict = [String : String] ()
var timeFrameDict = [String : [String : String]] ()

feedDict["Significant Earthquakes"]
feedDict["Significant Earthquakes"] = "http://www.SigEq.com"
feedDict["Significant Earthquakes"]
timeFrameDict["Past Hour"] = feedDict // Add "Significant Earthquakes" to timeFrameDict

timeFrameDict["Past Hour"]!
timeFrameDict["Past Hour"]!["Significant Earthquakes"]

feedDict["M4.5+ Earthquakes"] = "http://www.M45.com"
timeFrameDict["Past Hour"] = feedDict // Add "M4.5+ Earthquakes" to timeFrameDict
timeFrameDict["Past Hour"]!

// -----------------------

// https://www.codementor.io/tips/6731824430/how-to-access-deeply-nested-dictionaries-in-swift

var colorsDict = [String : Int] ()
var patternsDict = [String : [String : Int]] ()
var bugsDict = [String : [String : [String : Int]]] ()

colorsDict["red"] = 1
patternsDict["spotted"] = colorsDict
bugsDict["ladybug"] = patternsDict


bugsDict["ladybug"]!["spotted"]!["red"]!++ // Prints 1
bugsDict["ladybug"]!["spotted"]!["red"]!++ // Prints 2
bugsDict["ladybug"]!["spotted"]!["red"]!++ // Prints 3
bugsDict["ladybug"]!["spotted"]!["red"]! // Prints 4


// -----------------------


// http://stackoverflow.com/questions/24646498/trouble-unpacking-dictionary-of-dictionaries-in-swift

var holeDictionary = Dictionary<String,Dictionary<String,Dictionary<String,Int>>>()
var aDictionary = holeDictionary["1"]
if let aDictionary = holeDictionary["1"] {
    let bDictionary = holeDictionary["1"]!["key"]!
}


// -----------------------


// http://stackoverflow.com/questions/24051904/how-do-you-add-a-dictionary-of-items-into-another-dictionary

func += <KeyType, ValueType> (inout left: Dictionary<KeyType, ValueType>, right: Dictionary<KeyType, ValueType>) {
    for (k, v) in right {
        left.updateValue(v, forKey: k)
    }
}


/*

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<key>Past Hour</key>
<dict>
<key>Significant Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_hour.geojson</string>
<key>M4.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_hour.geojson</string>
<key>M2.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_hour.geojson</string>
<key>M1.0+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/1.0_hour.geojson</string>
<key>All Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson</string>
</dict>
<key>Past Day</key>
<dict>
<key>Significant Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_day.geojson</string>
<key>M4.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_day.geojson</string>
<key>M2.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson</string>
<key>M1.0+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/1.0_day.geojson</string>
<key>All Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_day.geojson</string>
</dict>
<key>Past 7 Days</key>
<dict>
<key>Significant Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_week.geojson</string>
<key>M4.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_week.geojson</string>
<key>M2.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_week.geojson</string>
<key>M1.0+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/1.0_week.geojson</string>
<key>All Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.geojson</string>
</dict>
<key>Past 30 Days</key>
<dict>
<key>Significant Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/significant_month.geojson</string>
<key>M4.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_month.geojson</string>
<key>M2.5+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_month.geojson</string>
<key>M1.0+ Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/1.0_month.geojson</string>
<key>All Earthquakes</key>
<string>http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson</string>
</dict>
</dict>
</plist>


*/
