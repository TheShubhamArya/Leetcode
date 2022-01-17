// 53. Maximum subarray
class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = nums[0]
        var curSum = 0
        for num in nums {
            if curSum < 0 {
                curSum = 0
            }
            curSum += num
            maxSum = max(curSum, maxSum)
        }
        return maxSum
    }
}
