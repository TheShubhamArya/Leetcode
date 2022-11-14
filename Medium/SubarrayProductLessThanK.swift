// 713. Subarray Product Less Than K

class Solution {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in 0..<nums.count {
            var left = nums[i]
            if left < k {
                result += 1
            }
            var j = i + 1
            
            while j < nums.count {
                left *= nums[j]
                if left < k {
                    result += 1
                } else {
                    break
                }
                j += 1
            }
        }
        return result
    }
}
