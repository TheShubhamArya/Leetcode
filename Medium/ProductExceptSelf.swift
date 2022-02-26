// 238. Product Except Self
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var leftArray = [Int](repeating: 1, count: nums.count)
        var rightArray = [Int](repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            leftArray[i] = nums[i-1] * leftArray[i-1]
        }
        
        for i in (0..<(nums.count-1)).reversed(){
            rightArray[i] = nums[i+1] * rightArray[i+1]
        }
        
        var product = [Int](repeating: 1, count: nums.count)
        for i in 0..<nums.count {
            product[i] = leftArray[i]*rightArray[i]
        }
        
        return leftArray
    }
}
