// 560. Subarray Sum Equals K

class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var result = 0
        for i in 0..<nums.count {
            var sum = nums[i]
            if sum == k {
                result += 1
            }
            var j = i + 1
            while j < nums.count {
                sum += nums[j]
                if sum == k {
                    result += 1
                }
                j += 1
            }
        }
        return result
    }
}
