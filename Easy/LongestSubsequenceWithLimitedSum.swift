// 2389. Longest Subsequence With Limited Sum

class Solution {
    func answerQueries(_ nums: [Int], _ queries: [Int]) -> [Int] {
        var output = [Int]()
        let nums = nums.sorted(by: <)
        for query in queries {
            var sum = 0
            var count = 0
            for i in 0..<nums.count {
                sum += nums[i]
                count += 1
                if sum > query {
                    output.append(count-1)
                    break
                }
            }
            if sum <= query && count == nums.count {
                output.append(count)
            }
        }
        return output
    }
}
