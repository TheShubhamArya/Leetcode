// 1089. Duplicate Zeros

class Solution {
    func duplicateZeros(_ arr: inout [Int]) {
        var i = 0
        while i < arr.count - 1 {
            if arr[i] == 0 {
                arr.removeLast()
                arr.insert(0, at: i+1)
                i += 1
            } 
            i += 1
        }
    }
}
