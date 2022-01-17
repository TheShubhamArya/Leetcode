// 33. Search rotated sorted array
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
  
        var left = 0
        var right = nums.count - 1
        
        // To find the separation point
        while left < right {
            let middle = (left+right)/2
            if nums[middle] == target {
                return middle
            }
            if nums[middle] >= nums[right] {
                left = middle + 1
            } else if nums[middle] < nums[right]{
                right = middle
            } 
        }
        
        // To reset the pointers based on the separation
        let sep = left
        left = 0
        right = nums.count - 1
        
        if target >= nums[sep] && target <= nums[right] {
            left = sep
        } else {
            right = sep - 1
        }
        
        // To find the target in the separated array
        while left <= right {
            let middle = (left+right)/2
            if nums[middle] == target {
                return middle
            } else if nums[middle] > target {
                right = middle - 1
            } else {
                left = middle + 1
            }
        }
        
        return -1
    }
}
