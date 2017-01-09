/*
 
 https://www.reddit.com/r/dailyprogrammer/comments/5e4mde/20161121_challenge_293_easy_defusing_the_bomb/?
 
 ========= Description =========
 
 To disarm the bomb you have to cut some wires. These wires are either white, black, purple, red, green or orange.
 
 The rules for disarming are simple:
 
 If you cut a white cable you can't cut white or black cable.
 If you cut a red cable you have to cut a green one.
 If you cut a black cable it is not allowed to cut a white, green or orange one.
 If you cut a orange cable you should cut a red or black one.
 If you cut a green one you have to cut a orange or white one.
 If you cut a purple cable you can't cut a purple, green, orange or white cable.
 If you have anything wrong in the wrong order, the bomb will explode.
 
 There can be multiple wires with the same colour and these instructions are for one wire at a time. Once you cut a wire you can forget about the previous ones.
 
 ========= Formal Inputs & Outputs  =========
 
 --------- Input description ---------
 
 You will recieve a sequence of wires that where cut in that order and you have to determine if the person was succesfull in disarming the bomb or that it blew up.
 
 Input 1
 
 white
 red
 green
 white
 
 Input 2
 
 white
 orange
 green
 white
 
 --------- Output description ---------
 
 Whether or not the bomb exploded
 Output 1 = "Bomb defused"
 Output 2 = "Boom"
 
 --------- Notes/Hints ---------

 A state machine will help this make easy
 http://www.figure.ink/blog/2015/1/31/swift-state-machines-part-1
 */

indirect enum CableType {
    case Black
    case White
    case Red
    case Orange
    case Green
    case Purple
}

struct Cable {

    var blackStatus: Bool = true
    var blackCut: Bool {
        mutating get {
            return blackStatus
        }
        set(valueName) {
            return blackStatus = valueName
        }
    }
    
    var whiteStatus: Bool = true
    var whiteCut: Bool {
        mutating get {
            return whiteStatus
        }
        set(valueName) {
            return whiteStatus = valueName
        }
    }

    mutating func cutCable(cable: CableType) {
        switch cable {
        case .Black:
            if blackStatus == true {
                blackCut = true
                blackStatus = false
                whiteStatus = false
                bombStatus()
            }
            return
        case .White:
            if whiteStatus == true {
                whiteCut = true
                whiteStatus = false
                blackStatus = false
                bombStatus()
            }
            return
        case .Red:
            print("Red Cut")
            return
        case .Orange:
            print("Orange Cut")
            return
        case .Green:
            print("Green Cut")
            return
        case .Purple:
            print("Purple Cut")
            return
        }
    }
    
    mutating func bombStatus() {
        print("whiteStatus: \(whiteStatus)")
        print("blackStatus: \(blackStatus)")
        print("-----------")
    }
    
}

var cbl = Cable()
cbl.cutCable(cable: .Black)
print("b")
cbl.cutCable(cable: .White)
print("w")

// Add elements to an array. After 4 are entered, decide.

// If you cut a white cable you can't cut white or black cable.
// If you cut a red cable you have to cut a green one
// If you cut a black cable it is not allowed to cut a white, green or orange one
// If you cut a orange cable you should cut a red or black one
// If you cut a green one you have to cut a orange or white one
// If you cut a purple cable you can't cut a purple, green, orange or white cable
// If you have anything wrong in the wrong order, the bomb will explode.




