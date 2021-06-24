import Foundation

//Rasayana Churan
//Bhringrajasava

// 15 and 21 not yest solved.

// MARK: Reverse array

//func reverseGivenArray(_ arr:[Int]) -> [Int]{
//    var reverse_arr = [Int](repeating: 0, count: arr.count)
//    var index = arr.count - 1
//    var i = 0
//    while index >= 0 {
//
//        reverse_arr[index] = arr[i]
//        i += 1
//        index -= 1
//    }
//
//    return reverse_arr
//}
//
//let nums = [-7,-3,2,3,11]
//print(reverseGivenArray(nums))

//MARK: Buble Sort
//func bubleSort(_ arr: inout [Int]) -> [Int]{
//    for i in 0..<arr.count{
//        for j in 0..<arr.count-i-1{
//        if arr[j] > arr[j + 1]{
//            let temp = arr[j]
//            arr[j] = arr[j + 1]
//            arr[j + 1] = temp
//           }
//        }
//    }
//    return arr
//}

//MARK: 15,22 :- Missing element

//func MissingElement(_ arr : [Int]) -> Int{
//
//    var n  = arr.count + 1
//    var x = 0
//    var y = 0
//    for i in 0..<n {
//        x = x ^ i
//        print("\(i),,,,\(x)")
//    }
//
//    for j in 0..<arr.count{
//        y = arr[j] ^ y
//        print("\(j),,,,\(j)")
//    }
//
//    let result = x ^ y
//    return result
//}
//MissingElement([0,1])

//MARK: 15,21 :-  Product of Array Except Self
/*func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    var nums_final = [Int](repeating: 1, count: nums.count)
    var left = 1
    for i in 0..<nums.count{
        nums_final[i] = left
        left = nums[i] * left
    }
    var right = 1
    for i in (0..<nums.count).reversed(){
        nums_final[i] *= right
        right = nums[i] * right
    }
    return nums_final
}
    productExceptSelf([1,2,3,4])

//MARK: 15,20 :- product array

/*func productOfArray(_  arr : inout [Int]) -> [Int]{
    var prev = arr[0]
    arr[0] = arr[0] * arr[1]
    let before = arr[arr.count - 2]
    for index in 1..<arr.count - 1{
        let temp = arr[index]
        arr[index] = prev * arr[index + 1]
        prev = temp
    }
    arr[arr.count - 1] = before * arr[arr.count - 1]
    return arr
}
var input = [2,3,4,5,6]
productOfArray(&input)
//MARK: 15,19 :- arrange array in zig zag manner

//i/p = [4,3,1,2,6,5,8]
//o/p = [3,4,1,6,2,8,5]

/*func arrangeInZigZagManner(_ arr : inout [Int]) -> [Int]{
    
    var index = 0
    var flag = true
    
    while index <= arr.count - 2 {
        if flag{
            if arr[index] > arr[index + 1]{
                let temp = arr[index]
                arr[index] = arr[index + 1]
                arr[index + 1] = temp
            }
        }else{
            if arr[index] < arr[index + 1]{
                let temp = arr[index]
                arr[index] = arr[index + 1]
                arr[index + 1] = temp
            }
        }
     flag = !flag
      index += 1
    }
    return arr
}

var input = [4,3,1,2,6,5,8]
arrangeInZigZagManner(&input)
//MARK: 15,18 :- replace higher maximum on left hand side

/*func maxElementFromRightSide(_ elements:[Int]) -> [Int]{
    
    var final_arr = [Int](repeating: 0, count: elements.count)
    var index = 0
    final_arr[index]  = -1
    
    var max_element = 0
    while index < elements.count - 1 {
        if elements[index] > max_element{
            max_element = elements[index]
        }
        final_arr[index + 1] = max_element
        index += 1
    }
    
    
    return final_arr
    
}

maxElementFromRightSide([16,17,2,5,1])

//MARK: 15,17 :- Move Zeroes

/*func moveZeroes(_ nums: inout [Int]) {
    
    
    
    var temp = 0
    
    for _ in nums{
        var i = 0
        var j = 1
        while j < nums.count {
            if nums[i] == 0{
                temp = nums[i]
                nums[i] = nums[j]
                nums[j] = temp
            }
            i += 1
            j += 1
        }
    }
   
}

var arr = [0,1,0,3,12]
moveZeroes(&arr)


//MARK: 15,16 :- fair-candy-swap

/*func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
    let sum_A = A.reduce(0, +)
    let sum_B = B.reduce(0) {$0 + $1}
    
    let set_b : Set = Set<Int>(B)
    var result_arr = [Int](repeating: 0, count: 2)
    
    let total = (sum_A + sum_B) / 2
    let check_diff = total - sum_A
    
    for i in A{
        let j = i + check_diff
        if set_b.contains(j){
            result_arr[0] = i
            result_arr[1] = j
        }
    }
    return result_arr
}

print(fairCandySwap([1,2,5],[2,4]))



//MARK: 15 :- maximum time value repeats from sorted array



//MARK: 14 :- maximum time value repeats
/*func majorityElement(_ nums: [Int]) -> Int {
      
    var max_repeated_val = nums[0]
    var max_repeated_frequency = 1
    var store_dict = [Int:Int]()
    
    store_dict[nums[0]] = 1
    
    for i in 1..<nums.count{
        
        let key_exist = store_dict[nums[i]] != nil
        
        
        if key_exist{
            var existing_count = store_dict[nums[i]]
            existing_count! += 1
            store_dict.updateValue(existing_count!, forKey: nums[i])
            
        }else{
            store_dict[nums[i]] = 1
        }
        
        
        
        if store_dict[nums[i]]! > max_repeated_frequency{
            max_repeated_frequency = store_dict[nums[i]]!
            max_repeated_val = nums[i]
        }
        
    }
    
    
    return max_repeated_val
   }
print(majorityElement([2,2,1,1,1,2,2]))
//MARK: 14 :- Transpose Matrix
/*
 
 1 2 3
 4 5 6
 7 8 9
 
 [0][0] [0][1] [0][2]
 [1][0] [1][1] [1][2]
 [2][0] [2][1] [2][2]
 
 
 1 2 3
 4 5 6
 i   j
 [0][0] [0][1] [0][2]
 [1][0] [1][1] [1][2]
 */

/*func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var transpose_matrix = [[Int]](repeating: [Int](repeating: 0, count: matrix.count), count: matrix[0].count)
    
    for (i,val) in matrix.enumerated(){
        for j in 0..<val.count{
            transpose_matrix[j][i] = matrix[i][j]
        }
    }
    
    return transpose_matrix
    }
let val = transpose([[1,2,3,6],[4,5,6,9]])
print(val)

//MARK: 14 :- print matrix

/*func printMatrix(_ Arr:[Int], _ m : Int , _ n : Int) {
    
    if Arr.count != (m * n){
        print("array can not be converted in matrix")
        return
    }
    
    var new_arr = [[Int]]()
    var temp = [Int]()
    var str = ""
    
    for i in 0..<Arr.count{
        
        temp.append(Arr[i])
        if temp.count == m {
            new_arr.append(temp)
            temp.removeAll()
        }
    }
    
    // print all matrix
    for i in new_arr{
        str = ""
        for j in i{
            str = str + " \(j)"
        }
        print("\(str)")
    }
    
    //print from top left diagonal
    str = ""
    for (i,val) in new_arr.enumerated(){
       
        for (j,vall) in val.enumerated(){
            
            if i == j{
            str = str + " \(vall)"
            }
        }
        
    }
    print("print from top left diagonal == \(str)")
 
    // print digonal from top right
    var index_ii = 0
    str = ""
    for (i,val) in new_arr.enumerated(){
        var index_j = val.count-(i+1)
        for (j,vall) in val.enumerated(){
            if i == index_ii && j == index_j {
            str = str + " \(vall)"
                index_j -= 1
            }
        }
        index_ii += 1
    }
    print("print diagonal from top right == \(str)")
    
   
    
    //print bottom right diagonal
    str = ""
    for (i,val) in new_arr.reversed().enumerated(){

        for (j,vall) in val.reversed().enumerated(){
            if (i == j){
                str = str + " \(vall)"
            }
        }

    }
    print("print bottom right diagonal == \(str)")
    
    //print bottom left diagonal
    var index_i = 0
    str = ""
    for (i,val) in new_arr.reversed().enumerated(){
        var index_j = index_i
        for (j,vall) in val.enumerated(){
            if i == index_i && j == index_j {
                str = str + " \(vall)"
            }
        }
        
        index_i += 1
    }
    print("print bottom left diagonal == \(str)")
    
    //print in reverse order
   for (i,val) in new_arr.enumerated(){
        var index_j = val.count - 1
        str = ""
        while index_j >= 0{
            str = str + " \(val[index_j])"
            index_j -= 1
        }
        print("\(str)")
    }
}
printMatrix([1,2,3,4,5,6,7,8,9], 3, 3)


//MARK: 13 :-Transpose Matrix

//Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
//Output: [[1,4,7],[2,5,8],[3,6,9]]

/*func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var transpose_arr = Array(repeating: Array(repeating: 0, count: matrix.count), count: matrix[0].count)
    
    for (i,val) in matrix.enumerated(){
        for (j,jval) in val.enumerated(){
            transpose_arr[j][i] = matrix[i][j]
        }
        
        }
    print(transpose_arr)
    return transpose_arr
    }

transpose([[1,2,3],[4,5,6],[7,8,9]])
//MARK: 12 :-three cosucutive odds
/*func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
       
       var i = 0
       var j = i + 1
       var k = j + 1
       var flag = false
       
    while k < arr.count{
        if arr[i] % 2 != 0  {
            if arr[j] % 2 != 0{
                if arr[k] % 2 != 0{
                    flag = true
                }
            }
        }
        i += 1
        j +=  1
        k += 1
       }
    
       return flag
   }

threeConsecutiveOdds([1,2,34,3,4,7,23,12])

//MARK: 11 :-Minimum Absolute Difference
/*func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
    
    let sorted_arr = arr.sorted()
    var min_dif = Int.max
    var min_diff_arr = [[Int]]()
    
    for i in stride(from: 0, to: sorted_arr.count-1, by: 1){
       
        if min_dif > abs(sorted_arr[i] - sorted_arr[i + 1]){
            min_diff_arr.removeAll()
            min_diff_arr.append([sorted_arr[i], sorted_arr[i+1]])
            min_dif = abs(sorted_arr[i] - sorted_arr[i + 1])
        }else if min_dif ==  abs(sorted_arr[i] - sorted_arr[i + 1]){
            min_diff_arr.append([sorted_arr[i], sorted_arr[i+1]])
        }
        
    }
    
    return min_diff_arr
}
minimumAbsDifference([4,2,1,3])
//MARK: 10 :-Running Sum of 1d Array

/*func runningSum(_ nums: [Int]) -> [Int] {
    var resultant_arr = [Int]()
    var val = 0
    for i in nums{
        val = val + i
        resultant_arr.append(val)
    }
      return resultant_arr
}
runningSum([1,1,1,1])
//MARK: 9 :- Richest Customer Wealth
//accounts = [[1,2,3],[3,2,1]]
/*func maximumWealth(_ accounts: [[Int]]) -> Int {
    var max_welth = 0
    
    for val in accounts{
        var total_sum = 0
        for j in val{
            total_sum = j + total_sum
            if total_sum > max_welth{
                max_welth = total_sum
            }
        }
    }
    
    return max_welth
}
maximumWealth([[1,5],[7,3],[3,5]])
//MARK: 8 :- Best Time to Buy and Sell Stock
/*var prices = [7,1,5,3,6,4] //0/p = 7

func maxProfit(_ prices: [Int]) -> Int {
    var max_profit = 0
    var first_min = prices[0]
    var max_profit_arr = 0
    
    for val in prices{
        if val < first_min{
            first_min = val
        }else if val - first_min > max_profit{
            max_profit_arr = (val - first_min) + max_profit_arr
            first_min = val
            max_profit = 0
        }
    }
    
    return max_profit_arr
}
maxProfit(prices)


//MARK: 7 :- Best Time to Buy and Sell Stock
//[1,5,3,6,4,7]
/*func maxProfit(_ prices: [Int]) -> Int {
    var high_profit = 0
    var first_min = prices[0]
    
    for i in 0..<prices.count{
        if prices[i] < first_min {
            first_min = prices[i]
        }else if prices[i] - first_min > high_profit{
            high_profit = prices[i] - first_min
        }
        
    }
    return high_profit
}

print(maxProfit([7,1,5,3,6,4]))


//MARK: 6 :- Merge Sorted Array

//Input: nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
// Output: [1,2,2,3,5,6]
/*func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
   
    var k = m + n - 1
    var i = m - 1
    var j = n - 1
    
    
    while k >= 0 && j >= 0{
        
        if nums1[i] < nums2[j] {
            nums1[k] = nums2[j]
            j -= 1
        }else{
            nums1[k] = nums1[i]
            i -= 1
        }
        k -= 1
    }
    
}
var nums1 = [1,2,3,0,0,0]
merge(&nums1, 3, [2,5,6], 3)

// MARK: 5 :- Squares of a Sorted Array

/*func sortedSquares(_ nums: [Int]) -> [Int] {
        
        var squared_nums = [Int]()
        for i in nums{
            squared_nums.append(i * i)
        }
    let sorted_arr = bubleSort(&squared_nums)
    
        
        return sorted_arr
    }

// MARK:-  using two pointer methods

/*func sortedSquares(_ nums: [Int]) -> [Int] {
    var result = [Int](repeating: 0, count: nums.count)
    var left = 0
    var right = nums.count - 1
    var index = nums.count - 1
    //if we started index from zero it will be in reverse order
    
    while left <= right{
        var a = nums[left] * nums[left]
        var b = nums[right] * nums[right]
        
        if a > b {
            result[index] = a
            index -= 1
            left += 1
        }else{
            result[index] = b
            index -= 1
            right -= 1
        }
    }
    
    return result
       
    }
let nums = [-7,-3,2,3,11]
print(sortedSquares(nums))

// MARK: 4 :- find sec maximum and sec minimum value from integer array

/*func SecMaxAndMin(_ Arr: [Int]) -> (Int,Int){
    var sec_max = 0
    var sec_min = Arr[0]
   var new_arr = Arr
   let sorted_arr = bubleSort(&new_arr)
    
    for i in 0..<sorted_arr.count{
        if i == sorted_arr.count - 2{
            sec_max = sorted_arr[i]
        }else if i == 1{
            sec_min = sorted_arr[i]
        }
    }
    return(sec_max,sec_min)
}

var val = [6,7]
print(SecMaxAndMin(val))




// MARK: 3 :- find maximum and minimum value fro integer array

/*func maxMinInArray(_ arr:[Int]) -> (Int,Int){
    var max = 0
    var min = arr[0]
    
    for i in arr{
        if i > max{
            max = i
        }
        
        if i < min{
            min = i
        }
    }
    
    
    return(max,min)
}

print(maxMinInArray([2,5,3,7,3,1]))


// MARK: 2 :- given a string reverse string

/* func reverseString(_ str : String) -> String{
    var final_str = ""
    
    for i in str{
        final_str =  String(i) + final_str        // str = e   final = w
    }
    return final_str
}
print(reverseString("wellcome"))
*/

//MARK:-by two pointer method

/*func reverseString(_ str : String) -> String{
     var charArr = stringToChar(str)
     
    var first = 0
    var last = charArr.count-1
    
    while first < last {
        
        (charArr[first],charArr[last]) = (charArr[last],charArr[first])
        first += 1
        last -= 1
    }
   
    let final_str = charToString(charArr)
    return final_str
}

func stringToChar(_ str: String) -> [Character]{
    var charArr = [Character]()
    for i in str{
        charArr.append(i)
    }
    return charArr
}

func charToString(_ char : [Character]) -> String{
    var str = ""
    for i in char{
        str = str + String(i)
    }
    
    return str
}

print(reverseString("wellcome"))
*/
/////////////////////////////////////////////////////////////////////////

// MARK:1 :- given string find count of vowels( all small letters)
//             i/p = wellcome
//             o/p = 3
/*
func countVowels(_ str : String) -> Int{
    var count_vowels = 0
    
    for i in str{
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            count_vowels += 1
        }
    }
    
    return count_vowels
}

print(countVowels("wellcome"))
*/




 */*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/
