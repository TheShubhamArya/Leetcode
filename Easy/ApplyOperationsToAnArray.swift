// 2460. Apply Operations to an Array

class Solution {
    func applyOperations(_ nums: [Int]) -> [Int] {
        var nums = nums
        var totalZeros = 0
        for i in 0..<nums.count-1{
            if nums[i] == nums[i+1] {
                nums[i] *= 2
                nums[i+1] = 0
                totalZeros += 1
            }
            if nums[i] == 0 {
                totalZeros += 1
            }
        }
        var zeroCount = 0
        var i = 0
        while i < nums.count {
            if nums[i] == 0 {
                nums.remove(at: i)
                nums.insert(0,at: nums.count)
                zeroCount += 1
            } else {
                i += 1
            }
            if zeroCount >= totalZeros {
                break
            }
        }
        return nums
    }
}
