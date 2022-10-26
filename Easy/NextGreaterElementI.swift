// 496. Next Greater Element I

class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int](repeating: -1, count: nums1.count)
        for (i,num1) in nums1.enumerated() {
            var nextGreatestElement = -1
            for j in 0..<nums2.count {
                if nextGreatestElement == -1 {
                    if num1 == nums2[j] {
                        nextGreatestElement = num1
                    }
                } else {
                    if nums2[j] > nextGreatestElement {
                        nextGreatestElement = nums2[j]
                        break
                    }
                }
            }
            if nextGreatestElement != num1 {
                result[i] = nextGreatestElement
            } else {
                result[i] = -1
            }
            
        }
        return result
    }
}
