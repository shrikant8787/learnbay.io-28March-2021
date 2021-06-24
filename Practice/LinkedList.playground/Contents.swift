import UIKit


public class ListNode{
    var value : Int
    var next : ListNode?
    init() { self.value = 0 ; self.next = nil }
    init(_ val : Int) { self.value = val ; self.next = nil }
    init(_ val : Int , _ next : ListNode?) { self.value = val ; self.next = next }
}
var seven = ListNode(7,nil)
var sixth = ListNode(6, nil)
var fifth = ListNode(5, sixth)
var fourth = ListNode(4, fifth)
var third = ListNode(3, fourth)
var second = ListNode(2, third)
var first = ListNode(1, second)



// MARK: arrange linked list in odd and even order of indexes

//func oddEvenIndex(_ head : ListNode?) -> ListNode?{
//
//
//}


//MARK: 0 find odd or even linked list

func OddEven(_ head : ListNode?) -> String{
    var result = ""
    
    var fast = head
    
    while fast != nil {
        
        if fast?.next == nil{
            result = "Odd"
        }else{
            result = "Even"
        }
        fast = fast?.next?.next
    }
    
    
    return result
}
print(OddEven(first))

//MARK: 1 Length of linked list
func lengthOfLisnkedList(_ head : ListNode?) -> Int{
    var count = 0
    var current_node = head
    while current_node != nil {
        count += 1
        current_node = current_node?.next
    }
    return count
}

//MARK: 2 Print all linked list
func printAllLinkedList(_ head : ListNode?){
    var current_node = head
    while current_node != nil {
        print(current_node?.value ?? -1)
        current_node = current_node?.next
    }
}


//MARK: 3 reverse linked list
func reverseGivenLinkedList(_ head : ListNode?) -> ListNode?{
    var current_node = head
    var prev_nod : ListNode?
    var next_nod : ListNode?
    
    while current_node != nil {
        next_nod = current_node?.next
        current_node?.next = prev_nod
        prev_nod = current_node
        current_node = next_nod
    }
    
    return prev_nod
}

//MARK: 4 reverse linked list
func findMiddleOfLinkedList(_ head : ListNode?) -> Int{
    
    var slow = head
    var fast = head
   // var str = ""
    while fast?.next != nil && fast != nil{
        slow = slow?.next
        fast = fast?.next?.next
//        if fast == nil{
//            str = "Even"
//        }else{
//            str = "Odd"
//        }
    }
   // print(str)
    return slow!.value
}

//MARK: find Nth node
func findNthNodeFromLinkedList(_ head : ListNode?,_ n : Int) -> Int{
    
   
    var slow =  head
    var fast = head
    
    var m = 0
    while m < n {
        if fast != nil{
        fast = fast?.next
        m += 1
        }
    }
    while fast?.next != nil {
        slow = slow?.next
        fast = fast?.next
        
       }
    return slow!.value
}

func removeNthNodeFromLinkedList(_ head : ListNode?,_ n : Int) -> ListNode?{
    
    if head == nil {return nil}
    var current = head
    var slow = head
    var fast = head
    var i = 0
    while i < n{
        fast = fast?.next
        i = i + 1
    }
    while fast?.next != nil{
        slow = current
        current = current?.next
        fast = fast?.next
    }
    
    slow?.next = current?.next
    return head
}


func reverseTillKElement(_ head : ListNode?, _ k : Int) -> ListNode?{
    var current_node = head
    var prev_nod : ListNode?
    var next_nod : ListNode?
    
    while current_node != nil {
        next_nod = current_node?.next
        current_node?.next = prev_nod
        prev_nod = current_node
        current_node = next_nod
        
    }
    print(prev_nod?.value)
    return prev_nod
}


reverseTillKElement(first,2)
//print(findMiddleOfLinkedList(first))
//reverseGivenLinkedList(first)
//printAllLinkedList(second)


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var l1 = l1
    var l2 = l2
    var carry = 0
    var result : ListNode? = ListNode(0)
    var head = result
    
    while l1 != nil || l2 != nil || carry > 0{
        
        let first = l1?.value ?? 0
        let second = l2?.value ?? 0
        
        let sum = first + second + carry
        
        let value = sum % 10
        carry = sum / 10
        
        result?.next = ListNode(value)
        result = result?.next
        
        l1 = l1?.next
        l2 = l2?.next
    }
    
    return head?.next
   }

print(addTwoNumbers(fifth,first)?.value)
