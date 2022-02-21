// 45. Jump Game II

class Solution {
    func jump(_ nums: [Int]) -> Int {
        var output = 0
        var current = 0
        
        for num in nums {
            var currentNum = nums[current]
            if currentNum == 0 || current == (nums.count - 1) {
                return output
            } else if current + 1 >= (nums.count - 1) || current + currentNum >= (nums.count - 1){
                output += 1
                return output
            }
            
            let possibleSteps = Array(nums[current + 1...current + currentNum])
            var maxStep = nums[current + 1]
            var nextIndex = 0
            for (i,step) in possibleSteps.enumerated() {
                var distance = step + i + 1 + current
                if distance >= maxStep {
                    maxStep = distance
                    nextIndex = i
                }
            }
            current += (nextIndex + 1)
            output += 1
        }
        
        return output
    }
}
