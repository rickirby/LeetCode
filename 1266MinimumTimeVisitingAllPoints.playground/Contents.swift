import UIKit

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        guard points.count > 1 else {
            return 0
        }
        
        var i = 1
        var distance = 0
        
        while i < points.count {
            distance += max(abs(points[i][0] - points[i - 1][0]), abs(points[i][1] - points[i - 1][1]))
            i += 1
        }
        
        return distance
    }
}


Solution().minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]])
Solution().minTimeToVisitAllPoints([[3,2],[-2,2]])
