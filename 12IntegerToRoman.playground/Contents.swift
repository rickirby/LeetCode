import UIKit

class Solution {
    
    let romanDict: [Int: String] = [
        1: "I",
        4: "IV",
        5: "V",
        9: "IX",
        10: "X",
        40: "XL",
        50: "L",
        90: "XC",
        100: "C",
        400: "CD",
        500: "D",
        900: "CM",
        1000: "M",
    ]
    
    func intToRoman(_ num: Int) -> String {
        var angka: [Int] = []
        angka.insert(num % 10, at: 0)
        angka.insert(((num - angka[0]) % 100), at: 0)
        angka.insert(((num - angka[0] - angka[1]) % 1000), at: 0)
        angka.insert((num - angka[0] - angka[1] - angka[2]), at: 0)
        
        var result = ""
        
        angka.forEach {
            if let roman = romanDict[$0] {
                result.append(roman)
            } else {
                if $0 / 1000 > 0 {
                    for _ in 0 ..< ($0 / 1000) {
                        result.append("M")
                    }
                } else if $0 / 100 > 0 {
                    if $0 - 500 > 0 {
                        result.append("D")
                    }
                    
                    for _ in 0 ..< ($0 % 500) / 100 {
                        result.append("C")
                    }
                } else if $0 / 10 > 0 {
                    if $0 - 50 > 0 {
                        result.append("L")
                    }
                    
                    for _ in 0 ..< ($0 % 50) / 10 {
                        result.append("X")
                    }
                } else if $0 > 0 {
                    if $0 - 5 > 0 {
                        result.append("V")
                    }
                    
                    for _ in 0 ..< ($0 % 5) {
                        result.append("I")
                    }
                }
            }
        }
        
        return result
    }
}

let num = 1949
Solution().intToRoman(num)
