// 16. 3 Sum closest
class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var output = 0
        var closest = Int.max
        let nums = nums.sorted(by: <)
        for (i,num) in nums.enumerated() {
            var left = i+1
            var right = nums.count - 1

            while left < right {
                let sum = num + nums[left] + nums[right]  
                let close = abs(target - sum)
                if close < closest {
                    output = sum
                    closest = close
                }
                if sum == target {
                    return sum
                } else if sum > target {
                    right -= 1
                } else {
                    left += 1
                }
            }
            
        }
        
        return output
    }
}
