// 674. Longest Continuous Increasing Subsequence 

class Solution {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var output = 0
        var current = 1
        var prev = 0
        for (i,num) in nums.enumerated() {
            if i != 0 {
                if num > prev {
                    current += 1
                } else {
                    output = max(current, output)
                    current = 1
                }
            }
            prev = num
        }
        output = max(output, current)
        return output
    }
}
