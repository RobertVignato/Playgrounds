// http://stackoverflow.com/questions/31043018/swift-2-0-nsrangeexception-range-or-index-out-of-bounds

import UIKit

// Extend the String object with helpers
extension String {
    // String.replace(); similar to JavaScript's String.replace() and Ruby's String.gsub()
    func replace(pattern: String, replacement: String) -> String {
        let regex = try! NSRegularExpression(
            pattern: pattern,
            options: [.CaseInsensitive]
        )
        return regex.stringByReplacingMatchesInString(
            self,
            options: [.WithTransparentBounds],
            range: NSMakeRange(0, self.characters.count),
            withTemplate: replacement
        )
    }
}
let prefix = "demoGRAPE.html".replace("(\\..*)", replacement: "")
print(prefix)

