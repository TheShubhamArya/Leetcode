// 462. Minimum Moves to Equal Array Elements II

class Solution {
    func minMoves2(_ nums: [Int]) -> Int {
        var output = 0
        var nums = nums.sorted(by: <)
        var mid = nums.count / 2
        
        for num in nums {
            output += abs(nums[mid] - num)
        }
        
        return output
    }
}
