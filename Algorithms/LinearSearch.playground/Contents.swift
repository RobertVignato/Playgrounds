
// Goal: Quickly find an element in an array.

let numbers = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]
var words = ["abby", "bob", "charles", "doris", "eddie"]
/*
numbers.indexOf(43)  // returns 15
The built-in indexOf() function performs a linear search. In code that looks something like this:
*/

func linearSearch<T: Equatable>(_ a: [T], _ key: T) -> Int? {
    for i in 0 ..< a.count {
        if a[i] == key {
            return i
        }
    }
    return nil
}

linearSearch(numbers, 43)  // returns 15





















// 8






















