class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var start = 0
        var current = m
        
        // Goes over nums2 once
        for num in nums2 {
            
          // Goes over each number in nums1 once. When we have a new number to insert, we start from a new start index.
            for j in start..<nums1.count {
                
                if num <= nums1[j]{ // if the number is less than the current nums1 number, insert to nums1 and remove the last number which will be a 0
                    nums1.insert(num, at: j)
                    nums1.removeLast()
                    start = j + 1
                    current += 1
                    break
                } else {
                    if j >= current && num > nums1[j]{ //when the number in nums2 is greater than the number in nums1 andd the the current filled values in nums1 (current) < the current j index.
                        nums1.insert(num, at: j)
                        nums1.removeLast()
                        start = j + 1
                        current += 1
                        break
                    }
                }
            }
        }
    }
}
