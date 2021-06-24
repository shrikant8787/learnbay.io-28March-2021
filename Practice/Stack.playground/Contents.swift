import UIKit


public class LinkedList<T>{
    
    var data : T
    var next : LinkedList?
    init(_ data : T) {
        self.data = data
    }
}



struct LLStack<T>{
    var head : LinkedList<T>?
    
    mutating func push(_ new : T){
        let new_node = LinkedList(new)
        if head == nil{
            self.head = new_node
        }else{
            let current_head = head
            head = new_node
            head?.next = current_head
        }
    }
    
    mutating func pop() -> T?{
        if head == nil{
            return nil
        }
        let currentTop = head
        if head?.next != nil{
            head = head?.next
        }else{
            head = nil
        }
        return currentTop?.data
    }
    
    func peak() -> T?{
        return head?.data
    }
    
    func isEmpty() -> Bool{
        return ( head == nil ) ? true : false
    }
}

var llstack = LLStack<Int>()
let ex_arr = [1,2,3,2,1]

func checkPalindromeLL(arr : [Int]) -> Bool{
    
    var count = arr.count % 2 == 0 ? 0 : arr.count/2 - 1
    var flag = false
    if count == 0{
        flag = false
        return flag
    }
    
    
    for val in 0...count {
        llstack.push(arr[val])
    }
    
    while count >= 0{
        print(llstack.head?.data)
        if arr[count] == llstack.peak(){
            llstack.pop()
            flag = true
        }else{
            flag = false
        }
        count = count - 1
    }
    return flag
}

//print(checkPalindromeLL(arr: ex_arr))


struct AStack<Element>{
    
    var stack_arr = [Element]()
    
    func size () -> Int{
        return stack_arr.count
    }
    
    func iEmpty(arr : [Element]) -> Bool{
        return size() < 1
    }
    
    mutating func push(_ new : Element){
        stack_arr.insert(new, at: 0)
    }
    
    func peak() -> Element{
        return stack_arr.first ?? 0 as! Element
    }
    
    mutating func pop(){
        if !iEmpty(arr: stack_arr){
        stack_arr.removeFirst()
        }
    }
    
}



var arrr = ["hi","bye","mid","bye","hi"]
var strng = ["3","4","-","2","*","1","/"]
var str = "sdjnfn"


func convertStringToArr(str : String) -> [Character]{
    var str_arr = [Character]()
    
    for i in str{
    str_arr.append(i)
    }
    return str_arr
}

func checkValue(char : Character) -> Int{
    let new_val : Int = Int(String(char)) ?? -11
    return new_val
}




//MARK: Check postfix
//"34-2*1/"
func evalRPN(_ tokens: [String]) -> Int {
        var a = 0
        var b = 0
        var stack = [Int]()
        
        for token in tokens {
            switch token {
            case "+":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a + b)
            case "-":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a - b)
            case "*":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a * b)
            case "/":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a / b)
            default:
                stack.append(Int(token)!)
            }
        }
        
        return stack.removeLast()
    }

print(evalRPN(strng))

var stackk = AStack<Int>()
let strng_arr = convertStringToArr(str: str)
// MARK: CheckPalindrome
func checkPalindrome(_ arr : [Character]) -> Bool{
    
    var count = arr.count % 2 == 0 ? 0 : arr.count/2 - 1
    var flag = false
    if count == 0{
        flag = false
        return flag
    }
    
    
    for val in 0...count {
        stackk.push(arr[val])
    }
    
    while count >= 0{
        print(stack)
        if arr[count] == stack.peak(){
            stackk.pop()
            flag = true
        }else{
            flag = false
        }
        count = count - 1
    }
    return flag
}

print(checkPalindrome(strng_arr))










