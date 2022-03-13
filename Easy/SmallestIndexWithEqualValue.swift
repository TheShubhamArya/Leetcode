// 2057. Smallest Index With Equal Value

class Solution {
    func smallestEqual(_ nums: [Int]) -> Int {
        for (i,num) in nums.enumerated() {
            if i % 10 == num {
                return i
            }
        }
        return -1 
    }
}
