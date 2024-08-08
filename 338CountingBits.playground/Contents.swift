class Solution {
    func countBits(_ n: Int) -> [Int] {
        var ans: [Int] = []
        
        for i in 0...n {
            ans.append(numberOfOne(n: i))
        }
        
        return ans
    }
    
    func numberOfOne(n: Int) -> Int {
        var calculatedN = n
        var count = 0
        while calculatedN > 0 {
            if calculatedN % 2 == 1 {
                count += 1
            }
            
            calculatedN /= 2
        }
        
        return count
    }
}


Solution().countBits(5)


//Input: n = 5
//Output: [0,1,1,2,1,2]
//Explanation:
//0 --> 0
//1 --> 1
//2 --> 10
//3 --> 11
//4 --> 100
//5 --> 101
