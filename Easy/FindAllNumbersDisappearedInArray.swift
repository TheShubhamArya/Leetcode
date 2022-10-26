// 448. Find All Numbers Disappeared in an Array

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 1, count: nums.count)
        for i in 1..<nums.count {
            result[i] = result[i-1] + 1
        }
        for num in nums {
            if num == result[num - 1] {
                result[num - 1] = -1
            }
        }
        result = result.filter({$0 != -1})
        return result
    }
}
