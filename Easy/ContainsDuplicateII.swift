// 219. Contains Duplicate II

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
// Time Complexity O(n)
// Space complexity O(2n)
        var dict = [Int:Int]()
        var numSet = Set<Int>()
        numSet.insert(nums[0])
        dict[nums[0]] = 0
        for i in 1..<nums.count {
            let (isFirstTime,_) = numSet.insert(nums[i])
            if !isFirstTime {
               if abs(i - dict[nums[i]]!) <= k {
                    return true
                } 
            } 
            dict[nums[i]] = i
        }
        return false
        
// Time complexity O(nk) where n = nums.length
// Space Complexity O(1)
//         if k == 0 {return false}
//         if nums.count == 1 {return false}
//         var i = 0
//         var j = 1
//         while i < nums.count{
//             if nums[i] == nums[j] {
//                 return true
//             }
//             if j - i >= k {
//                 i += 1
//                 j = i + 1
//             } else {
//                 j += 1
//             }
            
//             if j >= nums.count {
//                 i += 1
//                 j = i + 1
//                 if j >= nums.count {
//                     break
//                 }
//             }
//         }
//         return false
    }
}
