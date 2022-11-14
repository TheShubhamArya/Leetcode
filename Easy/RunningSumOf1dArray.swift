// 1480. Running Sum of 1d Array

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result = nums
        var current = nums[0]
        for i in 1..<nums.count {
            current += nums[i]
            result[i] = current
        }
        return result
    }
}
