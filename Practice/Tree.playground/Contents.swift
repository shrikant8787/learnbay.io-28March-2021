import UIKit

//array based implementation
class AStack <T>{
    var array = [T]()
    
    func push(_ element : T){
        array.insert(element, at: 0)
    }
    
    func pop() -> T?{
        return array.removeFirst()
    }
    
    func peak() -> T?{
        guard let new_element = array.first else {   fatalError("No element")  }
        return new_element
    }
    
    func isEmpty() -> Bool{
        return array.count <= 0 ? true : false
    }
}

var stack = AStack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.pop()
stack.peak()
print(stack.array)

//linked list based implementation

class LLStack<T>{
    
    var head : LLStack?
    
    func push(val:T){
        
    }
    
    func pop() -> T?{
        
    }
    
    func peak() -> T?{
        
    }
    
    func isEmpty() -> Bool{
        return false
    }
    
    
    
    
    
    
    
    
    
    
    
    
}


