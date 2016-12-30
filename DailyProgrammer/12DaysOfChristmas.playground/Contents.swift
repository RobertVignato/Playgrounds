//: Playground - noun: a place where people can play
// The Twelve Days of Christmas
// https://www.reddit.com/r/dailyprogrammer/comments/5j6ggm/20161219_challenge_296_easy_the_twelve_days_of/



var gifts = [
    "and 1 Partridge in a Pear Tree"
    , "2 Turtle Doves"
    , "3 French Hens"
    , "4 Calling Birds"
    , "5 Golden Rings"
    , "6 Geese a Laying"
    , "7 Swans a Swimming"
    , "8 Maids a Milking"
    , "9 Ladies Dancing"
    , "10 Lords a Leaping"
    , "11 Pipers Piping"
    , "12 Drummers Drumming"
]

var days = [
    "First"
    , "Second"
    , "Third"
    , "Fourth"
    , "Fifth"
    , "Sixth"
    , "Seventh"
    , "Eight"
    , "Ninth"
    , "Tenth"
    , "Eleventh"
    , "Twelfth"
]

var arrTemp = [String]()

var opening = "On the First day of Christmas my true love sent to me:"
var initialGift = "A Partridge in a Pear Tree"
var closing = "and 1 Partridge in a Pear Tree"
var itemNumber = 10
var count = 1

func singSong() {
    print(opening)
    print(initialGift)
    print("")
    
    var gift: String
    
    for i in 0...days.count - 2 {
        print("On the \(days[i+1]) day of Christmas my true love sent to me:")
        gift = gifts[i+1]
        arrTemp.insert(gift, at: 0)
        for i in 0...arrTemp.count - 1 {
            print(arrTemp[i])
        }
        print(closing)
        print("")
    }

}

singSong()



/*  DESIRED OUTPUT
 
 On the first day of Christmas
 my true love sent to me:
 1 Partridge in a Pear Tree
 
 On the second day of Christmas
 my true love sent to me:
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the third day of Christmas
 my true love sent to me:
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the fourth day of Christmas
 my true love sent to me:
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the fifth day of Christmas
 my true love sent to me:
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the sixth day of Christmas
 my true love sent to me:
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the seventh day of Christmas
 my true love sent to me:
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the eighth day of Christmas
 my true love sent to me:
 8 Maids a Milking
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the ninth day of Christmas
 my true love sent to me:
 9 Ladies Dancing
 8 Maids a Milking
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the tenth day of Christmas
 my true love sent to me:
 10 Lords a Leaping
 9 Ladies Dancing
 8 Maids a Milking
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the eleventh day of Christmas
 my true love sent to me:
 11 Pipers Piping
 10 Lords a Leaping
 9 Ladies Dancing
 8 Maids a Milking
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 On the twelfth day of Christmas
 my true love sent to me:
 12 Drummers Drumming
 11 Pipers Piping
 10 Lords a Leaping
 9 Ladies Dancing
 8 Maids a Milking
 7 Swans a Swimming
 6 Geese a Laying
 5 Golden Rings
 4 Calling Birds
 3 French Hens
 2 Turtle Doves
 and 1 Partridge in a Pear Tree
 
 */
