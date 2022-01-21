// 26. Remove duplicates

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        /*
        var count = nums.count
        var seen = Set<Int>()
        var i = 0
        while i < count {
            let (isInserted, _) = seen.insert(nums[i])
            if !isInserted {
                nums.remove(at: i)
                i -= 1
                count = nums.count
            }
            
            i += 1
        }
        return nums.count
        */
        if nums.count == 0 {return 0}
        var counter = 0
        for (i,num) in nums.enumerated() {
            if num != nums[counter] {
                counter += 1
                nums[counter] = num
            }
        }
        return counter + 1
    }
}
