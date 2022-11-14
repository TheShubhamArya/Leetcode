// 896. Monotonic Array

class Solution {
    func isMonotonic(_ nums: [Int]) -> Bool {
        var prev = nums[0]
        var increasingSequence = false
        var decreasingSequence = false
        for i in 1..<nums.count {
            if nums[i] > prev {
                increasingSequence = true
            } else if nums[i] < prev {
                decreasingSequence = true
            }
            if increasingSequence && decreasingSequence {
                return false
            }
            prev = nums[i]
        }
        return true
    }
}
