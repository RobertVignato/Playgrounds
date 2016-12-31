//: Playground - noun: a place where people can play

import UIKit
//import Foundation

class Regex: NSObject {
    
    func replace(searchString: String, pattern: String, replacementPattern: String) -> String? {
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let replacedString = regex.stringByReplacingMatches(
            in: searchString,
            options: [.anchored],
            range: NSMakeRange(0, searchString.characters.count - 1),
            withTemplate: replacementPattern)
        return replacedString
    }
    
    func listMatches(pattern: String, inString string: String) -> [String] {
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let strLength = string.characters.count
        let range = NSMakeRange(0, strLength)
        let matches = regex.matches(in: string, options: [.anchored], range: range)
        return matches.map {
            let range = $0.range
            return (string as NSString).substring(with: range)
        }
    }
    
    func replaceMatches(pattern: String, inString string: String, withString replacementString: String) -> String? {
        let regex = try! NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let strLength = string.characters.count
        let range = NSMakeRange(0, strLength)
        return regex.stringByReplacingMatches(in: string, options: [.anchored], range: range, withTemplate: replacementString)
    }
}

let searchString = "demoGRAPE.html"
let geoString = "29.8941498,-81.3128801"

let regex = Regex()
let replaceGEO0 = regex.replace(searchString: geoString, pattern: ".*?(?=,)", replacementPattern: "")
let replaceGEO1 = regex.replace(searchString: geoString, pattern: "\\-.*", replacementPattern: "") // "29.8941498,-81.3128801"
var replaceGEO3 = regex.listMatches(pattern: "\\-.*", inString: geoString) // "[]"

//let replace1 = regex.replace(searchString, pattern: ".{5}", replacementPattern: "") // "html"
//let replace2 = regex.replace(searchString, pattern: "demo.", replacementPattern: "") // "RAPE.html"
//let replace3 = regex.replace(searchString, pattern: ".{4}GRAPE\\.", replacementPattern: "") // "html"
//let replace4 = regex.replace(searchString, pattern: ".*?(?=\\.)", replacementPattern: "") // ".html"
//let replace5 = regex.replace(searchString, pattern: "[\\w-]+", replacementPattern: "") // ".html"
//var replace5b = regex.listMatches(".{5}", inString: searchString) // ["demoG", "RAPE."]

//// http://stackoverflow.com/questions/21607366/regex-to-match-base-name-of-files-with-multiple-extensions
//// matches string before first dot.
//let replace6 = regex.replace(searchString, pattern: "^[^.]*", replacementPattern: "") //
////This will find file names before very last dot only
//let replace7 = regex.replace(searchString, pattern: "^.+?(?=\\.[^.]*$)", replacementPattern: "")
//let replace8 = regex.replace(searchString, pattern: "\\-.*", replacementPattern: "x")
//let replace8 = regex.replace(searchString, pattern: "\\..*", replacementPattern: "") // supposed: demoGRAPE actual: "demoGRAPE.html"
let replace9 = regex.replace(searchString: searchString, pattern: "\\.html", replacementPattern: "") // supposed: demoGRAPE actual: "demoGRAPE.html"



//let replaceMatches1 = regex.replaceMatches("\\.", inString: searchString, withString: "")
//let replaceMatches2 = regex.replaceMatches("[\\.html]", inString: searchString, withString: "")

