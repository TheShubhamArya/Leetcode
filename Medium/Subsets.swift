// 78. Subsets
class Solution {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var subset_nums = [[Int]]()
        subset_nums.append([])
        for num in nums {
            
            for i in 0..<subset_nums.count {
                var current = subset_nums[i]
                current.append(num)
                subset_nums.append(current)
            }
            
        }
        return subset_nums
    }
}
