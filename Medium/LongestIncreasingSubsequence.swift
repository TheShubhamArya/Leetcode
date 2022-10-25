// 300. Longest Increasing Subsequence

class Solution {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        var LIS = [Int](repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            for j in 0...i { 
                if nums[i] > nums[j] {
                    LIS[i] = max(LIS[i], LIS[j] + 1)
                }
            }
        }
        return LIS.max() ?? LIS[0]
    }
}
