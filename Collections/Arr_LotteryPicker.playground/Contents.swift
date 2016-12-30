/*  array.contains
http://stackoverflow.com/questions/25989788/how-to-generate-unique-random-number-using-swift-in-ios
http://stackoverflow.com/questions/24102024/how-to-check-if-an-element-is-in-an-array
http://stackoverflow.com/questions/24090698/swift-contains-extension-for-array
*/
import UIKit
//var winningNumbers = [Int]() // Array of number that have already been selected
var winningNumbers = [1,2,3] // Array of number that have already been selected
var place = 1

func generateRandomNumber(max: Int) {
    let val  = Int(arc4random_uniform(UInt32(max))) + 1
    if winningNumbers.count == max { return }
    if winningNumbers.contains(val) {
        print("previously generated number: \(val)")
        return generateRandomNumber(max)
    }
    winningNumbers += [val]
    print("---------- WINNER #\(place) ----------------- # \(val)")
    place++
    if winningNumbers.count == max{ return }
}

func reset() {
    winningNumbers.removeAll()
    print("The \"winningNumbers\" array has been cleared: \(winningNumbers)\n")
}

func run(peopleCount: Int) {
    for i in 0...peopleCount {
        generateRandomNumber(peopleCount)
    }
}

// Run Code ----------------------------
reset()
run(16)


















