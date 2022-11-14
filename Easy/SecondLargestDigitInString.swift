// 1796. Second Largest Digit in a String

class Solution {
    func secondHighest(_ s: String) -> Int {
        var set = Set<Int>()
        for char in s {
            if char.isNumber {
                set.insert(Int(String(char)) ?? 0)
            }
        }
        
        var sorted = set.sorted(by: >)
        if sorted.isEmpty {return -1}
        return sorted.count > 1 ? sorted[1] : -1
    }
}
