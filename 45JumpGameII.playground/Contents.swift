import UIKit

class Solution {
    func jump(_ nums: [Int]) -> Int {
        var start = 0
        var farJump = 0
        var jumCount = 0
        
        for i in 0 ..< nums.count - 1 {
            farJump = max(farJump, i + nums[i])
            print("===--- i \(i) nums \(nums[i]) farJump \(farJump) start \(start)")
            if i == start {
                print("===--- masuk")
                jumCount += 1
                start = farJump
                print("===--- start \(start)")
            }
        }
        
        return jumCount
    }
}

let nums = [2,3,1,0,0,1,4]
Solution().jump(nums)
