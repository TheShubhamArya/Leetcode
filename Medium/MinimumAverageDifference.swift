// 2256. Minimum Average Difference

class Solution {
    func minimumAverageDifference(_ nums: [Int]) -> Int {
        var minAvgDiff = Int.max
        var result = 0
        var total = 0
        for num in nums {
            total += num
        }
        var leftSum = 0
        for i in 0..<nums.count {
            leftSum += nums[i]
            let rightSum = total - leftSum
            let leftAvg = leftSum / (i+1)
            var rightAvg = 0
            if nums.count - i - 1 != 0 {
                rightAvg = rightSum / (nums.count - i - 1)
            }
            let absDiff = abs(leftAvg - rightAvg)
            if absDiff < minAvgDiff {
                minAvgDiff = absDiff
                result = i
            }
            
        }
        return result
    }
}
