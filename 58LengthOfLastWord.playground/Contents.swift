import UIKit

//class Solution {
//    func lengthOfLastWord(_ s: String) -> Int {
//        return s.split(separator: " ").last?.count ?? 0
//    }
//}

//class Solution {
//    func lengthOfLastWord(_ s: String) -> Int {
//        var i = s.count
//        var foundFirstWord = false
//        var count = 0
//
//        while i > 0 {
//            i -= 1
//
//            if s[i] == " " && foundFirstWord && count != 0 {
//                break
//            }
//            else if s[i] == " " && !foundFirstWord {
//                foundFirstWord = true
//                continue
//            }
//            else if s[i] != " " {
//                foundFirstWord = true
//                count += 1
//            }
//        }
//
//        return count
//    }
//}

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var i = s.count
        var count = 0
        
        while i > 0 {
            i -= 1
            
            if s[i] != " " {
                count += 1
            }
            else if count > 0 {
                break
            }
        }
        
        return count
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

let s = "   fly me   to   the moon     "
Solution().lengthOfLastWord(s)
