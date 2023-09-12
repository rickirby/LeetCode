import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.filter { $0 != val }
        return nums.count
    }
}

var nums = [3, 2, 2, 3]
var val = 3
Solution().removeElement(&nums, val)

print(nums)
