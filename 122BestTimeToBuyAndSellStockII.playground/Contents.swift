import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var totalProfit = 0
        
        for i in 1..<prices.count {
            if prices[i] > prices[i-1] {
                totalProfit += prices[i] - prices[i-1]
            }
        }
        
        return totalProfit
    }
}

let prices = [7,1,5,3,6,4]
Solution().maxProfit(prices)
