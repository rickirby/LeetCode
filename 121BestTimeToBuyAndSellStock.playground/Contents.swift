import UIKit

//class Solution {
//    func maxProfit(_ prices: [Int]) -> Int {
//        guard var min = prices.first else {
//            return 0
//        }
//        var max = 0
//
//        for i in 0..<prices.count {
//            if prices[i] < min && prices[i] != 0 && i != prices.count - 1 {
//                min = prices[i]
//                max = prices[i]
//            }
//
//            if prices[i] > max {
//                max = prices[i]
//            }
//        }
//
//        return max - min
//    }
//}

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        guard var min = prices.first else {
            return 0
        }
        var totalMax = 0
        
        for price in prices {
            if price > min {
                totalMax = max(totalMax, price - min)
            }
            else {
                min = price
            }
        }
        
        return totalMax
    }
}

let prices = [3,2,6,5,0,3]
Solution().maxProfit(prices)
