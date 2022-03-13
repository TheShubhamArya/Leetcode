// 2154. Keep Multiplying Found Values by Two

class Solution {
    func findFinalValue(_ nums: [Int], _ original: Int) -> Int {
        var numsSet = Set<Int>()
        for num in nums {
            numsSet.insert(num)
        }
        var isInserted = false
        var original = original
        while !isInserted {
            (isInserted,_) = numsSet.insert(original)
            if !isInserted {
                original *= 2
            }
        }
        return original
    }
}
