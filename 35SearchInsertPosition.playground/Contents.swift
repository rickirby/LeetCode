//class Solution {
//    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//        if target > nums.last ?? 0 {
//            return nums.count
//        } else if target == nums.last ?? 0 {
//            return nums.count - 1
//        }
//        
//        var returnedIndex = 0
//        for (index, num) in nums.enumerated() {
//            if num >= target {
//                returnedIndex = index
//                break
//            }
//        }
//        
//        return returnedIndex
//    }
//}

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var pivot: Int = 0
        var left: Int = 0
        var right: Int = nums.count - 1
        
        while right >= left {
            pivot = left + (right - left) / 2
            
            if nums[pivot] == target {
                return pivot
            } else if nums[pivot] < target {
                left = pivot + 1
            } else if nums[pivot] > target {
                right = pivot - 1
            }
        }
        
        return left
    }
}

let nums = [1,3,5,6,7,8,10,12,14,17,18,19]



let target = 4
print(Solution().searchInsert(nums, target))
