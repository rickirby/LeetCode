import UIKit

//class Solution {
//    func canJump(_ nums: [Int]) -> Bool {
//        var i = 0
//        var reach = 0
//
//        while i <= reach {
//            reach = max(reach, nums[i] + i)
//            i += 1
//            if reach >= nums.count - 1 {
//                return true
//            }
//        }
//
//        return false
//    }
//}

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var lastPosition = nums.count - 1
        for i in 0 ..< nums.count {
            let reversedIndex = nums.count - 1 - i
            if reversedIndex + nums[reversedIndex] >= lastPosition {
                lastPosition = reversedIndex
            }
        }
        
        return lastPosition == 0
    }
}

//let nums = [1,1,1,3,0,8,2,0,0,1]
let nums = [2,3,1,1,4]
Solution().canJump(nums)
