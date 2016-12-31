// http://stackoverflow.com/questions/31043018/swift-2-0-nsrangeexception-range-or-index-out-of-bounds

import UIKit

// Extend the String object with helpers
extension String {
    func replace(pattern: String, replacement: String) -> String {
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
let prefix = "Index.html".replace(pattern: "(\\..*)", replacement: "")
print(prefix)

