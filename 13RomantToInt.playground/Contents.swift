import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        var last = 0
        var sum = 0
        
        for i in 1 ... s.count {
            let val: Int
            switch s[s.count - i] {
            case "I": val = 1
            case "V": val = 5
            case "X": val = 10
            case "L": val = 50
            case "C": val = 100
            case "D": val = 500
            case "M": val = 1000
            default: val = 0
            }
            
            if val >= last {
                sum += val
            } else {
                sum -= val
            }
            
            last = val
        }
        
        return sum
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

let s = "MCMXCIV"
Solution().romanToInt(s)
