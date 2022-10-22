// 220. Contains Duplicate III

class Solution {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ indexDiff: Int, _ valueDiff: Int) -> Bool {
        for i in 0..<nums.count {
            for j in i+1..<i+indexDiff+1 {
                if j >= nums.count {
                    break
                }
                if abs(nums[i] - nums[j]) <= valueDiff {
                    return true
                }
            }
        }
        return false
    }
}
