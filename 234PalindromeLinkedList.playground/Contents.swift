import UIKit

 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

//class Solution {
//    func isPalindrome(_ head: ListNode?) -> Bool {
//        var currentNode: ListNode? = head
//        var digits: [Int] = []
//        
//        while let node = currentNode {
//            digits.append(node.val)
//            currentNode = node.next
//        }
//        
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
    func isPalindrome(_ head: ListNode?) -> Bool {
        var currentNode: ListNode? = head
        var digits = 0
        
        while let node = currentNode {
            digits *= 10
            digits += node.val
            currentNode = node.next
        }
        
        if digits % 10 == 0 && digits != 0 {
            return false
        }
        
        var reversedDigits = 0
        
        while reversedDigits < digits {
            reversedDigits *= 10
            reversedDigits += digits % 10
            digits /= 10
            
            print("\(digits) \(reversedDigits)")
        }
        
        return digits == reversedDigits || digits == reversedDigits / 10
    }
}


Solution().isPalindrome(ListNode(1, ListNode(3, ListNode(1))))
