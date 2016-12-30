// http://www.codingexplorer.com/nsdate-class-reference/

import UIKit


//let now = NSDate()
//
//let todayComponents = NSDateComponents()
//todayComponents.year = 2014
//todayComponents.month = 11
//todayComponents.day = 12
//
//if let todayDate = NSCalendar.currentCalendar().dateFromComponents(todayComponents)
//{
//    println(todayDate)
//}


//extension NSDate {
//    func xDays(days:Int) -> NSDate {
//        return NSCalendar.currentCalendar().dateByAddingUnit( .CalendarUnitDay, value: days, toDate: self, options: nil)!
//    }
//}
//let fiveDaysFromToday = NSDate().xDays(+5)  // "Feb 23, 2015, 9:07 PM"


//let now = NSDate()
//let calendar = NSCalendar.currentCalendar()
//let newDate = calendar.dateByAddingUnit(
//    .CalendarUnitHour, // adding hours
//    value: 2, // adding two hours
//    toDate: now,
//    options: .allZeros
//)

let now = NSDate()
let calendar = NSCalendar.currentCalendar()
let newDate = calendar.dateByAddingUnit(
    .CalendarUnitMinute, // adding hours
    value: 2, // adding two hours
    toDate: now,
    options: .allZeros
)




