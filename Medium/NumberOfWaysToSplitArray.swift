// 2270. Number of Ways to Split Array

class Solution {
    func waysToSplitArray(_ nums: [Int]) -> Int {
        var result = 0
        var totalSum = 0
        for num in nums {
            totalSum += num
        }
        var left = 0
        for i in 0..<nums.count - 1 {
            left += nums[i]
            totalSum -= nums[i]
            if left >= totalSum {
                result += 1
            }
        }
        return result
    }
}
