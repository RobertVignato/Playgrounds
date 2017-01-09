/*
 
 https://www.reddit.com/r/dailyprogrammer/comments/5e4mde/20161121_challenge_293_easy_defusing_the_bomb/?
 
 ========= Description =========
 
 To disarm the bomb you have to cut some wires. These wires are either white, black, purple, red, green or orange.
 
 The rules for disarming are simple:
 
 If you cut a white cable you can't cut white or black cable.
 If you cut a red cable you have to cut a green one
 If you cut a black cable it is not allowed to cut a white, green or orange one
 If you cut a orange cable you should cut a red or black one
 If you cut a green one you have to cut a orange or white one
 If you cut a purple cable you can't cut a purple, green, orange or white cable
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

var black: Bool = true // true = "cutable" or "whole" or "uncut"
var white: Bool = true
var red: Bool = true
var orange: Bool = true
var green: Bool = true
var purple: Bool = true

var blackMaster: Bool = true
var whiteMaster: Bool = true
var redMaster: Bool = true
var orangeMaster: Bool = true
var greenMaster: Bool = true
var purpleMaster: Bool = true

func cutCable(cable: CableType) {
    
    switch cable {
        
    // If you cut a black cable it is not allowed to cut a white, green or orange one.
    case .Black:
        print("case .Black")
        if blackMaster == true {
            black = false
            white = false
            green = false
            orange = false
            updateBombStatus(cable: .Black)
        } else {
            print("You can't cut the Black")
        }
        return
        
    // If you cut a white cable you can't cut white or black cable.
    case .White:
        print("case .White")
        if whiteMaster == true {
            white = false
            black = false
            updateBombStatus(cable: .White)
        } else {
            print("You can't cut the White")
        }
        return
    
    // If you cut a red cable you have to cut a green one.
    case .Red:
        print("case .Red")
        if redMaster == true {
            red = true
            green = true
            updateBombStatus(cable: .Red)
        } else {
            print("You can't cut the Red")
        }
        return
        
    // If you cut a orange cable you should cut a red or black one.
    case .Orange:
        print("case .Orange")
        if orangeMaster == true {
            orange = false
            red = false
            updateBombStatus(cable: .Orange)
        } else {
            print("You can't cut the Orange")
        }
        return
        
    // If you cut a green one you have to cut a orange or white one.
    case .Green:
        print("case .Green")
        if greenMaster == true {
            green = false
            orange = false
            updateBombStatus(cable: .Green)
        } else {
            print("You can't cut the Green")
        }
        return
        
    // If you cut a purple cable you can't cut a purple, green, orange or white cable.
    case .Purple:
        print("case .Purple")
        if purpleMaster == true {
            purple = false
            green = false
            orange = false
            white = false
            updateBombStatus(cable: .Purple)
        } else {
            print("You can't cut the Purple")
        }
        return
    }
}

var snippedCables = [CableType]()

func updateBombStatus(cable: CableType) {
    snippedCables.append(cable)
    if snippedCables.count == 4 {
        print("snippedCables == 4")
        if snippedCables[0] == CableType.White {
            print("snippedCables[0]")
            if snippedCables[1] == CableType.Red {
                print("snippedCables[1]")
                if snippedCables[2] == CableType.Green {
                    print("snippedCables[2]")
                    if snippedCables[3] == CableType.White {
                        print("snippedCables[3]")
                        print("bomb disarmed")
                    } else {
                        print("boom!")
                    } // .White
                } // .Green
            } // .Red
        } // .White
    }
}

//cutCable(cable: .Black)
cutCable(cable: .White)
cutCable(cable: .Red)
cutCable(cable: .Green)
//cutCable(cable: .White)
cutCable(cable: .Orange)



// Add elements to an array. After 4 are entered, decide.

// If you cut a white cable you can't cut white or black cable.
// If you cut a red cable you have to cut a green one
// If you cut a black cable it is not allowed to cut a white, green or orange one
// If you cut a orange cable you should cut a red or black one
// If you cut a green one you have to cut a orange or white one
// If you cut a purple cable you can't cut a purple, green, orange or white cable
// If you have anything wrong in the wrong order, the bomb will explode.




