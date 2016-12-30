

// https://www.hackerrank.com/challenges/is-fibo/topics/fibonacci-numbers

// Fibonacci Numbers are 0,1,1,2,3,5,8,13

func fib(n:Int) -> Int {
    if n == 0 {
        return 0
    }
    if n == 1 {
        return 1
    }
    return (fib(n-1)+fib(n-2))
}

fib(7)