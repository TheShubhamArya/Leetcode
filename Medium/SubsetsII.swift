// 90. Subsets II

class Solution {
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        var nums = nums.sorted(by: <)
        var subset_nums = [[Int]]()
        subset_nums.append([])
        for num in nums {
            
            for i in 0..<subset_nums.count {
                var current = subset_nums[i]
                current.append(num)
                if !subset_nums.contains(current) {
                    subset_nums.append(current)
                }
            }
            
        }
        return subset_nums
    }
}
