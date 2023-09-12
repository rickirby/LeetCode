import UIKit

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = strs.first ?? ""
        var i = 0
        
        while i < strs.count {
            if strs[i].hasPrefix(prefix) {
                i += 1
            } else {
                prefix.removeLast()
            }
        }
        
        return prefix
    }
}

let strs = ["flower","flow","flight"]
Solution().longestCommonPrefix(strs)
