// 27. Remove element
class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var count = 0
        var total = nums.count
        while count < total {
            if nums[count] == val {
                nums.remove(at: count)
                total = nums.count
            } else {
                count += 1
            }
        }
        return nums.count
    }
}
