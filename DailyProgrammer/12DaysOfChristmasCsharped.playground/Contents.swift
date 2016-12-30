//: Playground - noun: a place where people can play

var days = [ "first", "second", "third", "fourth", "fifth", "sixth",
    "seventh", "eighth", "ninth", "tenth", "eleventh", "twelveth" ]

var gifts = [ "a Partridge in a Pear Tree", "two Turtle Doves",
    "three French Hens", "four Calling Birds", "five Golden Rings",
    "six Geese a Laying", "seven Swans a Swimming", "eight Maids a Milking",
    "nine Ladies Dancing", "ten Lords a Leaping", "eleven Pipers Piping",
    "twelve Drummers Drumming" ]

for i in 0...days.count - 1 {
    print("\nOn the \(days[i]) day of Christmas my true love sent to me:")
    var x: Int = 0
    //for j in stride(from: x, through: 0, by: -1) {
    // for (int j = i; j >= 0; j--) {
    for var j = i; j >= 0; j -= 1 {
        if (i > 0) {
            gifts[0] = "and a Partridge in a Pear Tree"
        } else {
            gifts[0] = "a Partridge in a Pear Tree"
        }
        print(gifts[j]);
        x += 1
        print(x)
    }
}



/*
 
 
 var Days = new List<string> { "first", "second", "third", "fourth", "fifth", "sixth",
 "seventh", "eighth", "ninth", "tenth", "eleventh", "twelveth" };
 
 var Gifts = new List<string> { "a Partridge in a Pear Tree", "two Turtle Doves",
 "three French Hens", "four Calling Birds", "five Golden Rings",
 "six Geese a Laying", "seven Swans a Swimming", "eight Maids a Milking",
 "nine Ladies Dancing", "ten Lords a Leaping", "eleven Pipers Piping",
 "twelve Drummers Drumming" };
 
 for (int i = 0; i < 12; i++) {
 Console.WriteLine("\nOn the {0} day of Christmas\nmy true love sent to me:", Days[i]);
 for (int j = i; j >= 0; j--) {
 if (i > 0)
 Gifts[0] = "and a Partridge in a Pear Tree";
 else
 Gifts[0] = "a Partridge in a Pear Tree";
 Console.WriteLine(Gifts[j]);
 }
 }
 
 
 */