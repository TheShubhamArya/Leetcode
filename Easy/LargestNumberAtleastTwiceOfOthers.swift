// 747. Largest Number At Least Twice of Others

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        if nums.count <= 1{
            return nums.count - 1
        }
        var numsMax = nums.max()!
        var maxFound = -1
        for (i,num) in nums.enumerated() {
            if num != numsMax {
                if num*2 > numsMax {
                    return -1
                }
            } else {
                if maxFound == -1{
                    maxFound = i
                }
                
            }
        }
        
        return maxFound
    }
}
