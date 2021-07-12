import UIKit

public class Node<T>{
    var value: T?
    var next:Node?
    
    init(val:T) {
        value = val
    }
}
