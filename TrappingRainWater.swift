// 42. Trapping Rain Water
class Solution {
    func trap(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var maxLeft = height[left]
        var maxRight = height[right]
        var water = 0
        
        while left < right {
            
            if maxLeft < maxRight {
                left += 1
                maxLeft = max(maxLeft, height[left])
                water += maxLeft - height[left]
            } else {
                right -= 1
                maxRight = max(maxRight, height[right])
                water += maxRight - height[right]
            }
            
        }
        
        return water
    }
}
