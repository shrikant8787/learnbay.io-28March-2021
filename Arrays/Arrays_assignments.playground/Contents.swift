import UIKit











//MARK: 21.https://leetcode.com/problems/container-with-most-water/
//MARK: 20.https://leetcode.com/problems/degree-of-an-array/
//MARK: 19.https://leetcode.com/problems/3sum-closest/



//MARK: 18.https://leetcode.com/problems/max-consecutive-ones-iii/
func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var length = 0
    
        
    
    
    
    return length
}
longestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1],3)


//MARK: 17.https://leetcode.com/problems/decode-xored-array/

func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var result_arr = [first]
    var decoded = first
    
    
    for i in encoded{
        decoded = i ^ decoded
        result_arr.append(decoded)
    }
    
    return result_arr
}
//decode([6,2,7,3], 4)



//MARK: 16.https://leetcode.com/problems/max-consecutive-ones/

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    
    var max = 0
    var count = 0
    for i in nums{
        
        if i == 1 {
            count += 1
            if max < count{
            max = count
            }
        }else{
            count = 0
        }
    }
    
    
    
    return max
}

//findMaxConsecutiveOnes([1,0,1,1,0,1])


//MARK: 15. https://leetcode.com/problems/trapping-rain-water/

func trap(_ height: [Int]) -> Int {
    var left_max = [Int](repeating : 0, count: height.count)
    var right_max = [Int](repeating : 0, count: height.count)
    var i = 0
    var j = height.count - 1
    var max = Int.min
    var result = 0
    while i < height.count{
        if height[i] > max{
            max = height[i]
            left_max[i] = max
        }else{
            left_max[i] = max
        }
        i += 1
    }
    
    max = Int.min
    while j >= 0{
        if height[j] > max{
            max = height[j]
            right_max[j] = max
        }else{
            right_max[j] = max
        }
        j -= 1
    }
    
 
    
    for i in 0..<height.count{
        
        let min_diff = min(left_max[i],right_max[i])
        let diff = min_diff - height[i]
        result = result + diff
        
    }
    
    
    
    
    
       return result
}
//trap([0,1,0,2,1,0,1,3,2,1,2,1])

//MARK: 14. //https://leetcode.com/problems/prison-cells-after-n-days/
//add method to check for what times of repeation array will be same as give3n aary
func prisonAfterNDays(_ cells: [Int], _ n: Int) -> [Int] {
    
    var arr = cells
    var result_arr = [Int](repeating: 0, count:arr.count)
    var i = 0
    let Nn = ((n-1) % 14) + 1
    
    
    while i < Nn{
       
        for j in 1..<arr.count - 1{
            if arr[j - 1] == arr[j + 1]{
                result_arr[j] = 1
            }else{
                result_arr[j] = 0
            }
        }
        i += 1
        result_arr[0] = 0
        result_arr[arr.count - 1] = 0
        arr = result_arr
    }
    return result_arr
}
prisonAfterNDays([0, 1, 0, 1, 1, 0, 0, 1],30)

//MARK: 13. //https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    
    //key = number , value = index
    var dict = [Int:Int]()
    
    for i in 0..<numbers.count{
        let result = target - numbers[i]
        if let result_index = dict[result]{
            return [result_index, i+1]
        }else{
            dict[numbers[i]] = i + 1
        }
    }
       return []
    }
//twoSum([2,11,7,15],9)

//MARK: 12. //https://leetcode.com/problems/fibonacci-number/
func fib(_ n: Int) -> Int {
    
    if n == 0{
        return 0
    }else if n == 1{
        return 1
    }else{
        return fib(n - 1) + fib(n - 2)
    }
    
}

//fib(6)

//MARK: 11.https://leetcode.com/problems/rotate-array/
func rotate(_ nums: inout [Int], _ k: Int) {
    
   var i = 0
    
    while (i < k){
        
        nums.insert(nums.last!, at : 0)
        nums.removeLast()
        i += 1
        
    }
     
    
}
//var arr = [1,2,3,4,5,6,7]
//rotate(&arr,3)



//MARK: 10. https://leetcode.com/problems/sort-colors/
// Using bubble sort

func sortColors(_ nums: inout [Int]) {
    
    var swap = true
    
    while swap{
        swap = false
        
        for i in 0..<nums.count - 1{
            
            if nums[i] > nums[i + 1]{
                
                let temp = nums[i]
                nums[i] = nums[i + 1]
                nums[i + 1] = temp
                
                swap = true
            }
            
        }
    }
}
//var arr = [2,0,2,1,1,0]
//sortColors(&arr)

// MARK: 9. https://leetcode.com/problems/decode-xored-array/
// App = 1 bruite force
/*func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result_arr = [Int](repeating: 0, count: 2)
    
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            
            if nums[i] + nums[j] == target{
                result_arr[0] = i
                result_arr[1] = j
                
            }
        }
    }
    return result_arr
}*/


// ??? APP = 2 usinbg hashmap
func twoSumm(_ nums: [Int], _ target: Int) -> [Int] {
    var result_dict = [Int:Int]()
    for index in 0..<nums.count {
            if let found = result_dict[target - nums[index]] {
                return [found, index]
            } else {
                result_dict[nums[index]] = index
            }
        }
    
   
    return []
}

// ??? APP = 3 sort array and using two pointer method
/*func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var sorted_arr = nums.sorted()
    var result_arr = [Int]()
    
    var i = 0
    var j = sorted_arr.count - 1
    
    while i < j{
        print("\(i),,,\(j)")
        if target < sorted_arr[i] + sorted_arr[j]{
            j = j - 1
        }else if target > sorted_arr[i] + sorted_arr[j]{
            i = i + 1
        }else{
            result_arr.append(i)
            result_arr.append(j)
            break
        }
    }
    return result_arr
}*/
twoSum([2,7,11,15],9)

//MARK: 8. https://leetcode.com/problems/xor-operation-in-an-array/

func xorOperation(_ n: Int, _ start: Int) -> Int {
    
    var result_arr = [Int]()
    var result = start
    var final_result = 0
    
    for _ in 0..<n{
        result_arr.append(result)
        result = result + 2
    }
    
    for i in result_arr{
        final_result = final_result ^ i
    }
    
    return final_result
}
xorOperation(10, 5)


//MARK:7. https://leetcode.com/problems/missing-number/

func missingNumber(_ nums: [Int]) -> Int {
    
    let n = nums.count + 1
    
    var x = 0
    var y = 0
    
    for i in 0..<n {
        x = x ^ i
    }
    
    for j in 0..<nums.count{
        y = nums[j] ^ y
    }
    
    return x ^ y
}
//missingNumber([0,1,2,5,3,4,8,6])

//MARK: ??? 6.https://leetcode.com/problems/find-common-characters/

func commonChars(_ words: [String]) -> [String] {
    var resu_word = [String]()
    var dict_words : [String : Int] = [:]
    let const = words.count
    
    var get_first = words[0]
    var count = 1
    for i in get_first{
       if dict_words[String(i)] == nil{
            dict_words[String(i)] = 1
       }else{
        dict_words[String(i)] = dict_words[String(i), default: 0] + 1
       }
    }
    
    print(dict_words)
    
    return resu_word
}
commonChars(["bella","label","roller"])

//MARK: 5. https://leetcode.com/problems/find-all-duplicates-in-an-array/

func findDuplicates(_ nums: [Int]) -> [Int] {
    var resultant_nums = [Int]()
    var dict_res :[Int:Int] = [:]
    
    for i in nums{
        if dict_res[i] == nil{
            dict_res[i] = 1
        }else{
            resultant_nums.append(i)
        }
    }
    
    return resultant_nums
}
//findDuplicates([4,3,2,7,8,2,3,1])

//MARK: 4.//https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    
    var result_arr = [Int]()
    
    for i in nums{
        
        var count = 0
        for j in nums{
            print("\(i),,,\(j)")
            if i > j{
                count += 1
            }
        }
        result_arr.append(count)
    }
    return result_arr
}
//smallerNumbersThanCurrent([8,1,2,2,3])

//MARK: 3. https://leetcode.com/problems/product-of-array-except-self/

/*
 1 - find left of product without including current elelment
 2 - with same left array calculate right  main array and make multiply
 
 product of left array and right array
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
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
//productExceptSelf([1,2,3,4])



//MARK: 2. given an array of integer update every element with multiplication of previous and next elelment.
//i/p = 2, 3, 4, 5, 6
//0/p = 6, 8, 15, 24, 30
//MARK: Approch 1 create seperate array
func productOfPrevAndNext(_ arr : [Int]) -> [Int]{
    var result_arr = [Int](repeating: 0, count: arr.count)
    var index = 0
    var last_index = arr.count - 1
    result_arr[index] = arr[index] * arr[index + 1]
    result_arr[last_index]  = arr[last_index] * arr[last_index - 1]
    index += 1
    while index  < last_index {
        result_arr[index] = arr[index - 1] * arr[index + 1]
        index += 1
    }
    
    return result_arr
}
//productOfPrevAndNext([2,3,4,5,6])
//MARK: Approch 2 within same array
func productOfArray(_  arr : inout [Int]) -> [Int]{
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
//var input = [2,3,4,5,6]
//productOfArray(&input)




//MARK: 2. given an array re-arrange the array in zigzag manner
//i/p = 4, 3, 1, 2, 6, 5, 8
//0/p = 3, 4, 1, 6, 2, 8,5

//note = a[0] < a[1] > a[2] < a[3] > a[4]

func zigZag(_ arr : inout [Int]) {
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
   
}
//var ex_arr = [4,3,1,2,6,5,8]
//zigZag(&ex_arr)




//MARK: 1. https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

func replaceElements(_ arr: [Int]) -> [Int] {
       
    var final_arr = [Int](repeating: 0, count: arr.count)
    var index = arr.count - 1
    final_arr[index]  = -1
    
    var max_element = 0
    while index > 0 {
        if arr[index] > max_element{
            max_element = arr[index]
        }
        final_arr[index - 1] = max_element
        index -= 1
    }
    
    
    return final_arr
    }
//replaceElements([16 , 17 , 2 , 5 , 1])
               
