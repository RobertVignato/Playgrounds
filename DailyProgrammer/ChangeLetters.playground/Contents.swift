//: https://www.reddit.com/r/dailyprogrammer/comments/5hy8sm/20161212_challenge_295_easy_letter_by_letter/?
//: https://developer.apple.com/reference/foundation/nsstring
//: https://oleb.net/blog/2016/08/swift-3-strings/


func stringConverter(input: String) -> [Character] {
    var c = [Character]()
    for i in input.characters {
        c.append(i)
    }
    return c
}

var arrFloor:[Character] = stringConverter(input: "floor")
var arrBrake:[Character] = stringConverter(input: "brake")
var arrWood:[Character] = stringConverter(input: "wood")
var arrBook:[Character] = stringConverter(input: "book")
var a_fall_to_the_floor:[Character] = stringConverter(input: "a fall to the floor")
var braking_the_door_in:[Character] = stringConverter(input: "braking the door in")

func arrayProcessor(primary: [Character], secondary: [Character]) {
    var mutablePrimary:[Character] = primary
    var result = String(mutablePrimary)
    var last = ""
    print(result)
    for i in 0...secondary.count - 1 {
        mutablePrimary.remove(at: i)
        mutablePrimary.insert(secondary[i], at: i)
        result = String(mutablePrimary)
        if result != last {
            print(result)
            last = result
        }
    }
}

arrayProcessor(primary: arrFloor, secondary: arrBrake)
print("")
arrayProcessor(primary: arrWood, secondary: arrBook)
print("")
arrayProcessor(primary: a_fall_to_the_floor, secondary: braking_the_door_in)


/*
 Input 1 ------------------
 
 floor
 brake
 
 Input 2 ------------------
 
 wood
 book
 
 Input 3 ------------------
 
 a fall to the floor
 braking the door in
 
 ============================
 
 Output description
 
 All the lines where you change one letter and one letter only
 
 Output 1 ------------------
 
 floor
 bloor
 broor
 braor
 brakr
 brake
 
 Output 2 ------------------
 
 wood
 bood
 book
 
 Output 3 ------------------
 
 a fall to the floor
 b fall to the floor
 brfall to the floor
 braall to the floor
 brakll to the floor
 brakil to the floor
 brakin to the floor
 brakingto the floor
 braking o the floor
 braking t the floor
 braking ththe floor
 braking thehe floor
 braking the e floor
 braking the d floor
 braking the dofloor
 braking the dooloor
 braking the dooroor
 braking the door or
 braking the door ir
 braking the door in
 */