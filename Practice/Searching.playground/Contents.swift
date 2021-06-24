import UIKit



// MARK: iterarive of binery serach

func binerySerach(){
    
}


//MARK: recursive of binery seaqrch with below problem
//Find first occurance of given value

func firstOccurance(arr: [Int],low : Int,high : Int,ip : Int) -> Int{
    let mid = low + (high - 1)/2
    
    print("check mid =\(arr[mid])")
    //for given value first occurance = (arr[mid - 1] < ip)
    //for given value last occurance = (arr[mid + 1] > ip)
    if ((mid == 0) || (arr[mid - 1] < ip))  && (arr[mid] == ip){
        return mid
    }else if (ip > arr[mid]){
        return firstOccurance(arr: arr, low: mid + 1, high: high, ip: ip)
    }else{
        return firstOccurance(arr: arr, low: low, high: mid - 1, ip: ip)
    }
}
let newArr = [1,2,3,4,4,4,5,6,7,8,9]

print(firstOccurance(arr: newArr, low: 0, high: newArr.count, ip: 4))

