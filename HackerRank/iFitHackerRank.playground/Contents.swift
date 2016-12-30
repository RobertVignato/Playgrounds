//: Playground - noun: a place where people can play

import UIKit


//let now = NSDate()
//print(now)

//let dueDate:NSDate = "2016 04 01"
//print(dueDate)


let date = NSDate();
// "Apr 1, 2015, 8:53 AM" <-- local without seconds

var formatter = NSDateFormatter();
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss ZZZ";
let defaultTimeZoneStr = formatter.stringFromDate(date);
// "2015-04-01 08:52:00 -0400" <-- same date, local, but with seconds
formatter.timeZone = NSTimeZone(abbreviation: "UTC");
let utcTimeZoneStr = formatter.stringFromDate(date);
// "2015-04-01 12:52:00 +0000" <-- same date, now in UTC
