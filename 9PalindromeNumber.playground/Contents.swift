import UIKit

//class Solution {
//    func isPalindrome(_ x: Int) -> Bool {
//        guard x >= 0 else {
//            return false
//        }
//        
//        if x == 0 {
//            return true
//        }
//        
//        var number = x
//        var digits: [Int] = []
//        
//        while number > 0 {
//            digits.append(number % 10)
//            number /= 10
//        }
//        var left = 0
//        var right = digits.count - 1
//        
//        while left < right {
//            if digits[left] != digits[right] {
//                return false
//            }
//            
//            left += 1
//            right -= 1
//        }
//        
//        return true
//    }
//}

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        
        var number = x
        var revertedNumber = 0
        
        while revertedNumber < number {
            revertedNumber *= 10
            revertedNumber += number % 10
            number /= 10
            
            print("\(number) \(revertedNumber)")
        }
        
        return number == revertedNumber || number == revertedNumber / 10
    }
}


Solution().isPalindrome(0)
