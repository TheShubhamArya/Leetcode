// 268. Missing Number

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var nums = nums.sorted(by: <)
        var missing = 0
        for num in nums {
            if num > missing {
                return missing
            }
            if missing == num {
                missing += 1
            }
        }
        return missing
    }
}
