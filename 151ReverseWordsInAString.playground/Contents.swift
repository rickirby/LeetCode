import UIKit

//class Solution {
//    func reverseWords(_ s: String) -> String {
//        let splitted = s.split(separator: " ")
//        var result = ""
//        for i in 1 ... splitted.count {
//            result.append(contentsOf: splitted[splitted.count - i])
//            result.append(i == splitted.count ? "" : " ")
//        }
//        return result
//    }
//}



class Solution {
    func reverseWords(_ s: String) -> String {
        var result: [String] = []
        var word = ""
        
        for i in 0 ..< s.count {
            print("===--- \(s[i])")
            if s[i] == " " || i == s.count - 1 {
                print("===--- masuk atas")
               
                
                
                if i == s.count - 1 {
                    word.append(s[i])
                }
                
                guard !word.isEmpty, word != " " else {
                    continue
                }
                
                result.append(word)
                word = ""
                print("===--- ini how")
            } else {
                print("===--- masuk bawah")
                word.append(s[i])
            }
        }
        
        print(result)
        word = ""
        for i in 1 ... result.count {
            word.append(result[result.count - i])
            word.append(i == result.count ? "" : " ")
        }
        return word
    }
}

extension String {
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
}

let s = "  hello world  "
Solution().reverseWords(s)
