import UIKit

// Cyclic, not success yet heuheu
//class Solution {
//    func rotate(_ nums: inout [Int], _ k: Int) {
//        guard k != 0 else {
//            return
//        }
//
//        for i in 0..<nums.count - 1 {
//            let origin = i > nums.count / 2 ? i - (nums.count / 2) : i
//            let destination = i + k >= nums.count ? i + k - nums.count : i + k
//            print("\(origin) \(destination)")
//            nums.swapAt(origin, destination)
//        }
//    }
//}

// Using extra array, O(n) time, O(n) space
//class Solution {
//    func rotate(_ nums: inout [Int], _ k: Int) {
//        let temp = nums
//        for i in 0..<nums.count {
//            nums[(i+k)%nums.count] = temp[i]
//        }
//    }
//}

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        
        reverse(&nums, start: 0, end: nums.count - 1)
        reverse(&nums, start: 0, end: k - 1)
        reverse(&nums, start: k, end: nums.count - 1)
    }
    
    func reverse(_ nums: inout [Int], start: Int, end: Int) {
        var left = start
        var right = end
        
        while left < right {
            nums.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
}

var nums = [0,1,2,3,4,5,6]
Solution().rotate(&nums, 1)
print(nums)


// 0 - 3    [3,1,2,0,4,5,6]
// 1 - 4    [3,4,2,0,1,5,6]
// 2 - 5    [3,4,5,0,1,2,6]
// 3(0) - 6 [6,4,5,0,1,2,3]
// 4(1) - 0 [4,6,5,0,1,2,3]
// 5(2) - 1 [4,5,6,0,1,2,3]


// [0,1,2]
// 0 - 2    [2,1,0]
// 1 - 0    [1,2,0]

// [0,1,2,3]
// 0 - 3    [3,1,2,0]
// 1 - 0    [1,3,2,0]
// 2 - 1    [1,2,3,0]
