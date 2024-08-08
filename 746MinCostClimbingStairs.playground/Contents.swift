import UIKit

class Solution {
//    func minCostClimbingStairs(_ cost: [Int]) -> Int {
//        var i = 0
//        var totalCost: Int = 0
//
//        while i < cost.count - 1 {
//            if cost[i] < cost[i + 1] {
//                totalCost += cost[i]
//                i += 1
//            } else {
//                totalCost += cost[i+1]
//                i += 2
//            }
//        }
//        return totalCost
//    }
    
    func climbStairs(_ n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        }
        
        var sum = 0
        var first = 1
        var second = 1
        
        for _ in 2...n {
            sum = first + second
            first = second
            second = sum
        }
        
        return sum
    }
}

//1 1 2 3 5 8

Solution().climbStairs(5)
