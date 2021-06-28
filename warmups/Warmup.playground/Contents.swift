import UIKit



//MARK:17. https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
func maxProfit2(_ prices: [Int]) -> Int {
    var max_profit = 0
    var res_max_profit = 0
    var first_min = prices[0]
    
    for i in prices{
        
        if i < first_min{
            first_min = i
        }else if max_profit < i - first_min{
            res_max_profit = (i - first_min) + res_max_profit
            max_profit = 0
            first_min = i
        }
        
    }
   return res_max_profit
}
maxProfit2([7,1,5,3,6,4])
//MARK:16. https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

func maxProfit(_ prices: [Int]) -> Int {
    var max_profit = 0
    
    var first_min  = prices[0]
    
    for (i,val) in prices.enumerated(){
        
        if val < first_min{
            first_min = val
        }else if max_profit < val - first_min {
            
            max_profit = val - first_min
        }
        
    }
    
    
    
    return max_profit
}

//maxProfit([7,1,5,3,6,4])

//MARK:15. https://leetcode.com/problems/defanging-an-ip-address/
func defangIPaddr(_ address: String) -> String {
       var ip_diff = ""

    for i in address{
        if i == "."{

            ip_diff = ip_diff + "[\(i)]"

        }else{
          ip_diff = ip_diff + "\(i)"
        }

    }

    return ip_diff
   }

//defangIPaddr("1.1.1.1")


//MARK:14. https://leetcode.com/problems/merge-sorted-array/

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    var k = m + n - 1
    var j = n - 1
    var i = m - 1 // start with i th last index
    
    while k >= 0 && j >= 0 {
        
        if i >= 0 && nums1[i] > nums2[j]{
            nums1[k] = nums1[i]
            i -= 1
        }else{
            nums1[k] = nums2[j]
            j -= 1
        }
        
         k -= 1
    }
}

//var nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
//merge(&nums1, m, nums2, n)

//MARK:13. https://leetcode.com/problems/squares-of-a-sorted-array/
//swapping two value method
func sortedSquares(_ nums: [Int]) -> [Int] {
    
    var result_arr = [Int](repeating: 0, count: nums.count)
    
    var right = nums.count - 1
    var left = 0
    
    var index = result_arr.count - 1
    
    while left <= right {
        
        let a = nums[left] * nums[left]
        let b = nums[right] * nums[right]
        
        if a > b {
            result_arr[index] = a
            index -= 1
            left += 1
        }else{
            result_arr[index] = b
            index -= 1
            right -= 1
        }
        
    }
    
    
    return result_arr
}
//sortedSquares([-7,-3,2,3,11])

//MARK:12. https://leetcode.com/problems/move-zeroes/

func moveZeroes(_ nums: inout [Int]) {
    
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
//moveZeroes(&arr)

//MARK:11. https://leetcode.com/problems/fair-candy-swap/
func fairCandySwap(_ A: [Int], _ B: [Int]) -> [Int] {
    
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
//fairCandySwap([1,2,5],[2,4])


//MARK:10. https://leetcode.com/problems/majority-element/
func majorityElement(_ nums: [Int]) -> Int {
    var repeated_value = 0
    var repeaed_time = 1
    
    let new_array = nums.sorted()
    
    var count = 1
    for i in new_array{
        if i == repeated_value{
            repeated_value = i
            count += 1
        }else{
            repeated_value = i
        }
        if repeaed_time < count{
            repeaed_time = count
            repeated_value = i
        }
    }
    
    return repeated_value
}

//majorityElement([3,2,3])
//MARK:9. https://leetcode.com/problems/transpose-matrix/
func transpose(_ matrix: [[Int]]) -> [[Int]] {
    var result_matrix = [[Int]](repeating: [Int](repeating: 0, count: matrix.count ), count: matrix[0].count)
    
    for (i,val) in matrix.enumerated(){
        for j in 0..<val.count{
            result_matrix[j][i] = matrix[i][j]
        }
    }
    
    return result_matrix
}
//transpose([[1,2,3],[4,5,6]])


//MARK:8. https://leetcode.com/problems/three-consecutive-odds/

func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    var flag = false
    
    var i = 0
    var j = 1
    var k = 2
    
    while arr.count - 1 >= k{
        if arr[i] % 2 != 0{
            if arr[j] % 2 != 0{
                if arr[k] % 2 != 0{
                    flag = true
                }
            }
        }
        
        i += 1
        j += 1
        k += 1
    }
    
    
    return flag
    
}

//threeConsecutiveOdds([1,2,34,3,4,5,8,23,12])

//MARK:7. https://leetcode.com/problems/minimum-absolute-difference/
func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
    
    var resultant_arr = [[Int]]()
    var min_diff = Int.max
    let test_arr = arr.sorted()
    for i in stride(from: 0, through: test_arr.count - 2, by: 1){
        let diff = abs(test_arr[i] - test_arr[i + 1])
        if diff < min_diff{
            resultant_arr.removeAll()
            resultant_arr.append([test_arr[i],test_arr[i + 1]])
            min_diff = abs(test_arr[i] - test_arr[i + 1])
        }else if min_diff == abs(test_arr[i] - test_arr[i + 1]){
            resultant_arr.append([test_arr[i],test_arr[i + 1]])
        }
    }
    
    
    return resultant_arr
}
//print(minimumAbsDifference([4,2,1,3]))

//MARK:6. https://leetcode.com/problems/jewels-and-stones/

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
       var count = 0
       for i in jewels{
           for j in stones{
               if i == j{
                   count += 1
               }
           }
       }
      return count
   }
//print(numJewelsInStones("aA", "aAAbbbb"))

//MARK:5. https://leetcode.com/problems/running-sum-of-1d-array/

func runningSum(_ nums: [Int]) -> [Int] {
    var result = [Int]()
    var temp = 0
    for i in nums
    {
        temp = temp + i
        result.append(temp)
    }
    return result
}
//print(runningSum([1,1,1,1,1]))

//MARK:4. https://leetcode.com/problems/richest-customer-wealth/

func maximumWealth(_ accounts: [[Int]]) -> Int {
    var max_welth = 0
    
    for i in accounts{
        var individual_welth = 0
        for j in i{
            individual_welth = individual_welth + j
            if individual_welth > max_welth{
                max_welth = individual_welth
            }
        }
    }
    return max_welth
}

//print(maximumWealth([[1,5],[7,3],[3,5]]))


//MARK: 3 - given array of integers find max and min value

func maxMin(arr : [Int]) -> [Int]{
    
    var max = Int.min
    var min = arr.first ?? 0
    
    var sec_max = max
    var sec_min = min
    
    var result_arr = [Int]()
    
    for nums in arr{
        //first largest and min
//        if nums < min{
//            min = nums // 1
//        }else if nums > max{
//            max = nums // 4
//        }
      
        //for second max and min
        if nums > max{
            sec_max = max
            max = nums
        }
        
        if nums < min{
            sec_min = min
            min = nums
        }
        
    }
    
    result_arr.insert(sec_min, at: 0)
    result_arr.insert(sec_max, at: 1)
    return result_arr
}
print(maxMin(arr : [4,3,1,2,9,8,10]))

//MARK: 2 - reverse the string from given string(all small letters)

func reverseString(name : String) -> String{
    
    //Approch 1
    var reverse_name = ""
    
    for i in name{
        reverse_name =  String(i) + reverse_name
    }
    return reverse_name
    
    //Approch 2 using two pointer method
 /*   var arr = [String]();
    for i in name{
        arr.append(String(i))
    }
    var i = 0
    var j = arr.count - 1

    while i <= j {

        let temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
        i += 1
        j -= 1
    }

    for j in arr{
        reverse_name = reverse_name + j
    }

    return reverse_name */
    
}
//print(reverseString(name: "learnbay"))




    
//MARK: 1 - find vowels from given string(all small letters)

func vowelCount(name : String) -> Int{
    var count = 0
    
    for i in name{
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            count += 1
        }
    }
    return count
}
//print(vowelCount(name: "learnbay"))
