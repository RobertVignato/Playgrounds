
// http://www.wikihow.com/Calculate-Volume
func vol(length: Double, width: Double, height: Double) -> Double {
    func calc() -> Double {
        let sum = (length * width) * height
        return sum
    }
    return calc()
}

vol(length: 8, width: 4, height: 6)


// http://www.wikihow.com/Measure-the-Length-x-Width-x-Height-of-Shipping-Boxes
func girth(width: Double, height: Double) -> Double {
    func calc() -> Double {
        let w2 = width * 2
        let h2 = height * 2
        let sum = w2 + h2
        return sum
    }
    return calc()
}

girth(width: 4,height: 6)
