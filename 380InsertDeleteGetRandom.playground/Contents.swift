import UIKit

class RandomizedSet {
    
    var values: [Int] = []
    var lastValue: Int? = nil

    init() {
        
    }
    
    func insert(_ val: Int) -> Bool {
        guard val != lastValue else {
            return false
        }
        
        for i in values {
            if val == i {
                return false
            }
        }
        
        values.append(val)
        return true
    }
    
    func remove(_ val: Int) -> Bool {
        if val == lastValue {
            lastValue = nil
            values.removeLast()
            return true
        }
        
        for i in 0..<values.count {
            if val == values[i] {
                values.remove(at: i)
                return true
            }
        }
        
        return false
    }
    
    func getRandom() -> Int {
        if values.count == 1 {
            return values[0]
        }
        
        return values[Int.random(in: 0..<values.count)]
    }
}

let obj = RandomizedSet()
obj.remove(0)
obj.remove(0)
obj.insert(0)
obj.getRandom()
obj.remove(0)
obj.insert(0)
