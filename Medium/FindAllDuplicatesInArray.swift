// 442. Find All Duplicates in an Array

class Solution {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var result = [Int](repeating: 1, count: nums.count)
        for i in 1...nums.count {
            result[i-1] = i
        }
        for num in nums {
            if num == result[num - 1] {
                result[num-1] = -1
            } else if result[num - 1] == -1 {
                result[num - 1] = -2
            }
        }
        var counter = 1
        var i = 0
        var max = result.count
        while i <= max && counter <= nums.count {
            if result[i] == -2 {
                result[i] = counter
                i += 1
                counter += 1
            } else {
                result.remove(at: i)
                counter += 1
                max = result.count
            }
        }
        return result
    }
}
