
/// http://stackoverflow.com/questions/40242702/converting-boolean-value-to-integer-value-in-swift-3

extension Bool: IntValue {
    func intValue() -> Int {
        if self {
            return 1
        }
        return 0
    }
}

protocol IntValue {
    func intValue() -> Int
}

print("\(true.intValue())") //prints "1"