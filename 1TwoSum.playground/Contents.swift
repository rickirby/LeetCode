import UIKit

//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var index: Int = 0
//
//        while index < nums.count {
//            let firstNumber = nums[index]
//            let secondNumber = target - firstNumber
//
//            let firstIndex = index
//            if let secondIndex = nums.firstIndex(of: secondNumber), secondIndex != firstIndex {
//                return [firstIndex, secondIndex]
//            } else {
//                index += 1
//            }
//        }
//
//        return []
//    }
//}

//class Solution {
//    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//        var dicts: [Int: Int] = [:]
//
//        for i in 0..<nums.count {
//            if let secondIndex = dicts[nums[i]] {
//                return [secondIndex, i]
//            } else {
//                dicts[target - nums[i]] = i
//                print(dicts)
//            }
//        }
//
//        return []
//    }
//}


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dicts: [Int: Int] = [:]
        
        for (i, val) in nums.enumerated() {
            if let pairIndex = dicts[val] {
                return [pairIndex, i]
            } else {
                dicts[target - nums[i]] = i
            }
        }
        
        return []
    }
}

//[
//    3: 0,
//    4: 1,
//]

Solution().twoSum([3,2,4], 6)
