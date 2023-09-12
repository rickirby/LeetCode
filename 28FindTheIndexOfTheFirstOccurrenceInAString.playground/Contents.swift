import UIKit

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var processedHaystack = haystack
        var count = 0
        
        while !processedHaystack.isEmpty {
            if processedHaystack.hasPrefix(needle) {
                return count
            } else {
                count += 1
                processedHaystack.removeFirst()
            }
        }
         
        return -1
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

let haystack = "sadbutsad"
let needle = "butr"
Solution().strStr(haystack, needle)
