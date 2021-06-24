import UIKit

func swapTwoNum<T>(_ a: inout T,_ b: inout T){
    let temp = a
    a = b
    b = temp
}
var num1 = 10
var num2 = 2
swap(&num1, &num2)

var str1 = "hi there"
var str2 = "bye there"

swap(&str1, &str2)

print("\(num1),,,,\(num2)")
print("\(str1),,,,\(str2)")
