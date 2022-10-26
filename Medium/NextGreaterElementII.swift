// 503. Next Greater Element II

class Solution {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: -1, count: nums.count)
        for (i,num) in nums.enumerated() {
            
            // check from i + 1 to nums.count
            var isFound = false
            for j in i+1..<nums.count {
                if num < nums[j] {
                    result[i] = nums[j]
                    isFound = true
                    break
                }
            }
            if !isFound {
                // check from 0 to i - 1
                for j in 0..<i {
                    if num < nums[j] {
                        result[i] = nums[j]
                        break
                    }
                }
            }
        }
        return result
    }
}
