import UIKit

//    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//        var indexNums2 = 0
//        for index in 0..<m+n {
//            print("===--- index \(index)")
//            let firstNums2 = nums2[indexNums2]
//            print("===--- get firstNums2 \(firstNums2)")
//            print("===--- cek with \(nums1[index]) \(nums1.count - index) \(nums2.count - indexNums2)")
//            if firstNums2 <= nums1[index] {
//                print("===--- masuk atas, nums1 \(nums1)")
//                nums1.insert(firstNums2, at: index)
//                print("===--- abis insert \(nums1)")
//                nums1.removeLast()
//                print("===--- abis remove last \(nums1)")
//                indexNums2 += 1
//                print("===--- indexNums2 \(indexNums2)")
//            }
//            else if nums1[index] == 0 && nums1.count - index == nums2.count - indexNums2 {
//                print("===--- masuk bawah \(nums1) \(nums2) \(indexNums2)")
//                nums1[index] = firstNums2
//                print("===--- abis masukin aja \(nums1)")
//                indexNums2 += 1
//                print("===--- bawah indexNums2 \(indexNums2)")
//            }
//            else {
//                print("===--- ga masuk apa2")
//            }
//
//            if indexNums2 == n {
//                break
//            }
//        }
//    }

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var indexNums2 = 0
        for index in 0..<m+n {
            if indexNums2 == n {
                break
            }

            if nums2[indexNums2] <= nums1[index] {
                nums1.insert(nums2[indexNums2], at: index)
                nums1.removeLast()
                indexNums2 += 1
            }

            if nums1[index] == 0 && nums1.count - index == nums2.count - indexNums2 {
                nums1[index] = nums2[indexNums2]
                indexNums2 += 1
            }
        }
    }
}

//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    for index in 0..<n {
//        nums1[index + m] = nums2[index]
//    }
//
//    nums1.sort()
//}

//var nums1 = [-1,0,0,3,3,3,0,0,0]
//var nums2 = [1,2,2]

var nums1 = [1,2,3,0,0,0]
var nums2 = [2,5,6]
Solution().merge(&nums1, 3, nums2, 3)

print(nums1)
