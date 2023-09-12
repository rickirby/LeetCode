import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard var refference = nums.first else {
            return 0
        }
        
        nums[0] = refference
        var i = 1
        
        for num in nums {
            if num != refference {
                nums[i] = num
                refference = num
                i += 1
            }
        }
        
        return i
    }
}



var nums = [0,0,1,1,1,2,2,3,3,4]

Solution().removeDuplicates(&nums)
print(nums)
