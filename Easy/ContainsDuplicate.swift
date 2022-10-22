// 217. Contains Duplicate

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var numSet = Set<Int>()
        for num in nums {
            let (firstEntry, _) = numSet.insert(num)
            if !firstEntry {
                return true
            }
        }
        return false
    }
}
