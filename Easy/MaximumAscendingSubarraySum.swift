//1800. Maximum Ascending Subarray Sum

class Solution {
    func maxAscendingSum(_ nums: [Int]) -> Int {
        var maximum = nums[0]
        var currentMax = nums[0] 
        var previous = nums[0]
        for i in 1..<nums.count {
            if previous < nums[i] {
                currentMax = max(currentMax + nums[i], nums[i])
                maximum = max(maximum, currentMax)
            } else {
                currentMax = nums[i]
            }
            previous = nums[i]
        }
        return maximum
    }
}
