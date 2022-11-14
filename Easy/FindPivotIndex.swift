// 724. Find Pivot Index

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var leftSum = 0
        var rightSum = 0
        for num in nums{
            rightSum += num
        }
        for (i,num) in nums.enumerated() {
            rightSum -= num
            if leftSum == rightSum {
                return i
            }
            leftSum += num
        }
        return -1
    }
}
