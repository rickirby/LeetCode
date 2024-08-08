import UIKit

class Solution {
    func fib(_ n: Int) -> Int {
        switch n {
        case 0:
            return 0
        case 1:
            return 1
        default:
            return fib(n-1) + fib(n-2)
        }
    }
}


print(Solution().fib(7))
