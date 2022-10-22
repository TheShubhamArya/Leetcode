// 1365. How Many Numbers Are Smaller Than the Current Number

class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var output = [Int](repeating: 0, count: nums.count)
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if i != j {
                    if nums[i] > nums[j] {
                        output[i] += 1
                    }
                }
            }
        }
        
        return output
    }
}
