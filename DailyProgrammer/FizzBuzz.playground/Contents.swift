

// If it's a multiple of 3 print "Fizz". Multiple of 5 print "Buzz". 3 and 5 print "FizzBuzz"

for i in 0...100 {
    if i % 3 == 0 {
        print("--- 3 --- Fizz: \(i)")
    }
    if i % 5 == 0 {
        print("----- 5 ----- Buzz: \(i)")
    }
    if i % 3 == 0 && i % 5 == 0 {
        print("-------- 3 & 5 -------- FizzBuzz: \(i)")
    }
}


