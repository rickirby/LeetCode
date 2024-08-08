import UIKit

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else {
            return [-1, -1]
        }
        
        let firstOccurence = findBound(nums, target, findingFirst: true)
        let lastOccurence = findBound(nums, target, findingFirst: false)
        
        return [firstOccurence, lastOccurence]
    }
    
    func findBound(_ nums: [Int], _ target: Int, findingFirst: Bool) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = 0
        
        while left <= right {
            mid = (left + right) / 2
            
            if target < nums[mid] {
                right = mid - 1
            } else if target > nums[mid] {
                left = mid + 1
            } else if target == nums[mid] {
                if findingFirst {
                    if mid == left || nums[mid - 1] != target {
                        return mid
                    }
                    
                    right = mid - 1
                } else {
                    if mid == right || nums[mid + 1] != target {
                        return mid
                    }
                    
                    left = mid + 1
                }
            }
        }
        
        return -1
    }
}

print(Solution().searchRange([2,3,4,5,7,7,7,7,7,7,7,7,7,8,10], 7))
