class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//      Hashmaps : Time complexity- O(n), Space complexity- O(n)
        var dictionary : [Int: Int] = [:]
        for (i,num) in nums.enumerated() {
            let difference = target - num 
            if dictionary.keys.contains(difference){
                return [dictionary[difference] ?? 0,i]
            }
            dictionary[num] = i
        }
        return []
        
//         Brute Force : Time complexity- O(n^2), Space complexity- O(1)
//         for (i,num1) in nums.enumerated() {
//             let nums2 = Array(nums[i+1..<nums.count]) 
//             for (j,num2) in nums2.enumerated() {
//                 if num1 + num2 == target {
//                     return [i,i+j+1]
//                 }
//             }
//         }
//         return []
    }
}
