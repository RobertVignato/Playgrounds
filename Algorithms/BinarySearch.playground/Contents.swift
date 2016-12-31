
 
// Divide and conquer
// 
// The classic way to speed this up is to use a binary search. The trick is to keep splitting the array in half until the value is found.
// 
// For an array of size n, the performance is not O(n) as with linear search but only O(log n). To put that in perspective, binary search on an array with 1,000,000 elements only takes about 20 steps to find what you're looking for, because log_2(1,000,000) = 19.9. And for an array with a billion elements it only takes 30 steps. (Then again, when was the last time you used an array with a billion items?)
// 
// Sounds great, but there is a downside to using binary search: the array must be sorted. In practice, this usually isn't a problem.
// 
// Here's how binary search works:
// 
// Split the array in half and determine whether the thing you're looking for, known as the search key, is in the left half or in the right half.
// How do you determine in which half the search key is? This is why you sorted the array first, so you can do a simple < or > comparison.
// *** If the search key is in the left half, you repeat the process there: split the left half into two even smaller pieces and look in which piece the search key must lie. (Likewise for when it's the right half.)
// This repeats until the search key is found. If the array cannot be split up any further, you must regrettably conclude that the search key is not present in the array.
// Now you know why it's called a "binary" search: in every step it splits the array into two halves. This process of divide-and-conquer is what allows it to quickly narrow down where the search key must be.


let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
    if range.lowerBound >= range.upperBound {
        // If we get here, then the search key is not present in the array.
        return nil
    } else {
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        // Is the search key in the left half?
        if a[midIndex] > key {
            return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
            
            // Is the search key in the right half?
        } else if a[midIndex] < key {
            return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
            
            // If we get here, then we've found the search key!
        } else {
            return midIndex
        }
    }
}

binarySearch(numbers, key: 43, range: 0 ..< numbers.count)  // gives 13

