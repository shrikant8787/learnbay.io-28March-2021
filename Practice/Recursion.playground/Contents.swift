import UIKit

var n = 5

func fact(_ n : Int) -> Int{
    if (n <= 1){
        return 1
    }else{
        print("before\(n)")
        return n * fact(n - 1)
        print("after\(n)")
    }
}
//print(fact(n))


func printFun(_ test : Int){
    if  test < 1{
        return
    }else{
        print("\(test) test before ") // 3
        printFun(test - 1)            // 2
        print("\(test) test after")
        return
    }
}

//printFun(3)

func fun(_ n : Int) -> Int{
    if (n == 1){
        return 0
    }else{
        return 1 + fun(n/2)
    }
}
//print(fun(17))


func fun2(_ n : Int)
{
    if n == 0 {
    return
    }
  fun2(n/2);
  print(n % 2);
}
//fun2(21)


// febbonaci number

//f(n) = f(n-1) + f(n-2)
func fibonaci(_ n : Int) -> Int{
    var arr = [Int]()
    if n == 0{
        return 0
    }else if n == 1{
        return 1
    }else{
        return (fibonaci(n - 1)) + (fibonaci(n - 2))
    }
}
print(fibonaci(5))


