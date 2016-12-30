


// http://stackoverflow.com/questions/24124956/variadic-parameters-and-defaulted-parameters


// Calling this will result in using the default value
func sum(#startingValue:Int, values:Int...) -> Int {
    return sum(startingValue: startingValue, values);
}

// Calling this will use whatever value you specified
func sum(#startingValue:Int, #additionalValue:Int, values:Int...) -> Int {
    return sum(startingValue: startingValue, additionalValue: additionalValue, values);
}

// The real function where you can set your default value
func sum(#startingValue:Int, additionalValue:Int = 77, values:[Int]) -> Int {
    var total:Int = startingValue + additionalValue
    for v in values {
        total += v
    }
    return total
}

// You can then call it either of these two ways:
// This way uses will use the value 77 for additional value
sum(startingValue:10, 1, 2, 3, 4, 5, 6, 7) // = 115

// This way sets additionalValue to the value of 1
sum(startingValue:10, additionalValue: 1, 2, 3, 4, 5, 6, 7) // = 38