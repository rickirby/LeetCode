import UIKit

class Solution {
    func hIndex(_ citations: [Int]) -> Int {
        
        let sortered = citations.sorted { $0 > $1 }
        var i = 0
        
        while i < citations.count {
            if sortered[i] >= i + 1 {
                i += 1
            } else {
                return i
            }
        }
        
        return i
    }
}

let citations = [9,6,7,8]
Solution().hIndex(citations)
