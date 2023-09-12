import UIKit

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var element: [Int: Int] = [:]
        for num in nums {
            element[num] = (element[num] ?? 0) + 1
        }
        
        var greatestCount = 0
        var greatestValue = 0
        
        element.forEach {
            if $1 > greatestCount {
                greatestCount = $1
                greatestValue = $0
            }
        }
        
        return greatestValue
    }
}

let nums = [2,2,1,1,1,2,2]
Solution().majorityElement(nums)
