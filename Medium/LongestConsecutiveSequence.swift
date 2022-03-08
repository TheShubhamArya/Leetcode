// 128. Longest Consecutive Sequence

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.isEmpty {
            return 0
        }
        var nums = nums.sorted(by: <)
        var longestSequence = 1
        var output = longestSequence
        var prev = nums[0]
        for i in 1..<nums.count {
            if (nums[i] - prev) == 1 {
                longestSequence += 1
            } else if nums[i] == prev {
                
            } else {
                output = max(longestSequence, output)
                longestSequence = 1
            }
            prev = nums[i]
        }
        output = max(longestSequence, output)
        return output
    }
}
