// 2148. Count Elements With Strictly Smaller and Greater Elements

class Solution {
    func countElements(_ nums: [Int]) -> Int {
        let nums = nums.sorted(by: <)
        var counter = 0
        for num in nums {
            if nums[0] < num && num < nums[nums.count - 1] {
                counter += 1
            }
        }
        return counter
    }
}
