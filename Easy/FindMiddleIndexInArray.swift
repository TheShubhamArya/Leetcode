// 1991. Find the Middle Index in Array

class Solution {
    func findMiddleIndex(_ nums: [Int]) -> Int {
//         Time - O(n^2)
//         for i in 0..<nums.count {
//             var leftSum = 0
//             for j in 0..<i {
//                 leftSum += nums[j]
//             }
//             var rightSum = 0
//             for j in i+1..<nums.count {
//                 rightSum += nums[j]
//             }
            
//             if leftSum == rightSum {
//                 return i
//             }
//         }
        
//      Time - O(n)
        var right = 0
        var left = 0
        for num in nums {
            right += num
        }
        for (i,num) in nums.enumerated() {
            right -= num
            if left == right {
                return i
            }
            left += num
        }
        return -1
    }
}
