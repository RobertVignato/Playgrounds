import Foundation

enum BombError: Error {
    case boom
}

enum Wire: String {
    case none = "none"
    case white = "white"
    case red = "red"
    case black = "black"
    case orange = "orange"
    case green = "green"
    case purple = "purple"
    
    var next: [Wire] {
        switch self {
        case .none: return [.white, .red, .black, .orange, .green, .purple]
        case .white: return [.red, .orange, .green, .purple]
        case .red: return [.green]
        case .black: return [.red, .black, .purple]
        case .orange: return [.red, .black]
        case .green: return [.white, .orange]
        case .purple: return [.red, .black]
        }
    }
}

func defuse(wires: [Wire]) throws {
    _ = try input.reduce(Wire.none) {
        guard $0.next.contains($1) else { throw BombError.boom }
        return $1
    }
}

//let input: [Wire] = [.white, .red, .green, .white]
//let input: [Wire] = [.white, .orange, .green, .white]

var input = [Wire]()
while let line = readLine(),
    let wire = Wire(rawValue: line) {
        input.append(wire)
}

do {
    try defuse(wires: input)
    print("Bomb Defused")
} catch {
    print("Boom")
}



