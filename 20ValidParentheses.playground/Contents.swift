import UIKit

class Solution {
    
    let pairs: [String: String] = [
        "]": "[",
        "}": "{",
        ")": "("
    ]
    
    func isValid(_ s: String) -> Bool {
        var temp: [String] = []
        
        for char in s {
            if let openSymbol = pairs[String(char)], openSymbol == temp.last {
                temp.removeLast()
            } else {
                temp.append(String(char))
            }
        }
        
        return temp.isEmpty
    }
}


Solution().isValid("([{}]]")


//   ([{}])
