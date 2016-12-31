// http://stackoverflow.com/questions/31043018/swift-2-0-nsrangeexception-range-or-index-out-of-bounds

import UIKit

//import Foundation

// Extend the String object with helpers
extension String {
    // String.replace(); similar to JavaScript's String.replace() and Ruby's String.gsub()
    func replace(pattern: String, replacement: String) -> String {
        // Debugging
        print(self.characters.count)
        print(NSMakeRange(0, self.characters.count - 1))
        let regex = try! NSRegularExpression(
            pattern: pattern,
            options: [.caseInsensitive]
        )
        return regex.stringByReplacingMatches(
            in: replacement,
            options: [.anchored],
            range: NSMakeRange(0, self.characters.count - 1),
            withTemplate: "xx"
        )
    }
}
//let prefix = "abc     123".replace("\\s+", replacement: " ")
//print(prefix)
//--------------------------------------------------
// Extend the String object with helpers
extension String {
    // String.replace(); similar to JavaScript's String.replace() and Ruby's String.gsub()
    func replace2(pattern: String, replacement: String) -> String {
        let regex = try! NSRegularExpression(
            pattern: pattern,
            options: [.caseInsensitive]
        )
        return regex.stringByReplacingMatches(
            in: self,
            options: [.withTransparentBounds],
            range: NSMakeRange(0, self.characters.count),
            withTemplate: replacement
        )
    }
}
let prefix2 = "abc     123".replace2(pattern: "(\\s+)", replacement: " ")
print(prefix2)


