class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var output = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let h = min(height[left], height[right])
            let b = (right - left)
            let area = h * b
            output = max(area, output)
            if height[left] < height[right]{
                left += 1
            } else {
                right -= 1
            }          
        }
        
        return output
    }
}
