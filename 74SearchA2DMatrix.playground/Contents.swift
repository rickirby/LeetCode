import UIKit

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var pLeft = 0
        var pRight = matrix.count - 1
        var pPivot = 0
        
        var pLastMatrix: [Int] = []
        
        for subMatrix in matrix {
            pLastMatrix.append(subMatrix[subMatrix.count - 1])
        }
        
        if pLastMatrix.count == 1 && matrix[0].count == 1 {
            return pLastMatrix[0] == target
        }
        
        // [7, 20, 60]
        
        while pLeft <= pRight {
            pPivot = pLeft + (pRight - pLeft) / 2
            if pLastMatrix[pPivot] == target {
                return true
            } else if pLastMatrix[pPivot] < target {
                pLeft = pPivot + 1
            } else if pLastMatrix[pPivot] > target {
                pRight = pPivot - 1
            }
        }
        
        let subArrayIndex = pLeft
        
        guard subArrayIndex < matrix.count else {
            return false
        }
        
        var subMatrix = matrix[subArrayIndex]
        
        guard subMatrix.count > 1 else {
            return subMatrix[0] == target
        }
        
        var sLeft = 0
        var sRight = subMatrix.count - 1
        var sPivot = 0
        
        while sLeft <= sRight {
            sPivot = sLeft + (sRight - sLeft) / 2
            if subMatrix[sPivot] == target {
                return true
            } else if subMatrix[sPivot] < target {
                sLeft = sPivot + 1
            } else if subMatrix[sPivot] > target {
                sRight = sPivot - 1
            }
        }
        
        return false
    }
}

print(Solution().searchMatrix([[1,1]], 2))

