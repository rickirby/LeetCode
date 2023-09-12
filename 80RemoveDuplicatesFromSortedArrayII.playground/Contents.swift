import UIKit

//class Solution {
//    func removeDuplicates(_ nums: inout [Int]) -> Int {
//        guard var refference = nums.first else {
//            return 0
//        }
//
//        guard nums.count > 1 else {
//            return 1
//        }
//
//        nums[0] = refference
//        var i = 1
//        var double = false
//
//        for j in 1..<nums.count {
//            if nums[j] == refference && !double {
//                nums[i] = nums[j]
//                i += 1
//                double = true
//            }
//            else if nums[j] != refference {
//                nums[i] = nums[j]
//                i += 1
//                double = false
//                refference = nums[j]
//            }
//        }
//
//        return i
//    }
//}


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count >= 2 else {
            return nums.count
        }
        
        var count = 1
        var j = 1
        
        for i in 1..<nums.count {
            count = nums[i] == nums[i - 1] ? count + 1 : 1
            
            if count <= 2 {
                nums[j] = nums[i]
                j += 1
            }
        }
        
        return j
    }
}



var nums = [1,1,1,2,2,3]

Solution().removeDuplicates(&nums)
print(nums)
