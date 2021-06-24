import UIKit

struct Queue<T>{
    
    var data_value = [T]()
    
   mutating func enqueue(val:T)  {
        self.data_value.append(val)
    }
    mutating func dequeue() -> T?{
        if data_value.isEmpty{
            return nil
        }else{
            let temp = data_value.first
            self.data_value.remove(at: 0)
            return temp
        }
    }
    
    var head : T? {
        return data_value.first
    }
    
    var tail : T?{
        return data_value.last
    }
}

var que = Queue<Int>()
que.enqueue(val: 1)
que.enqueue(val: 2)
que.enqueue(val: 3)
que.enqueue(val: 4)
que.enqueue(val: 5)

print(que)
print("head = \(que.head),,tail = \(que.tail)")
que.dequeue()
print("head = \(que.head),,tail = \(que.tail)")
