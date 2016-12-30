

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
