// 55. Jump Game

class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var current = 0
        
        for num in nums {
            let currentNum = nums[current]
            
            if current + currentNum >= (nums.count - 1) || current == (nums.count - 1) {
                return true
            } else if currentNum == 0 {
                return false
            }
            
            let possibleSteps = Array(nums[current+1...(current+currentNum)])
            var maximum = nums[current + 1]
            var nextStep = 0
            
            for (i,step) in possibleSteps.enumerated() {
                let distance = step + current + i + 1
                if distance >= maximum {
                    maximum = distance
                    nextStep = i
                }
            }
            current += (nextStep + 1)
            
        }
        
        return false
    }
}
