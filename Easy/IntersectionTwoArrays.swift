// 350. Intersection of Two Arrays II

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var output = [Int]()
        var nums2 = nums2
        for num1 in nums1 {
            if nums2.isEmpty {break}
            for j in 0..<nums2.count {
                if num1 == nums2[j] {
                    output.append(nums2[j])
                    nums2.remove(at: j)
                    break
                }
            }
        }
        return output
    }
}
