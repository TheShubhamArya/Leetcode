// 283. Move Zeroes

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let len = nums.count
        var i = 0
        var counter = 0
        while i < len && counter < len {
            if nums[i] == 0 {
                let element = nums.remove(at: i)
                nums.append(element)
            } else {
                i += 1
            }
            counter += 1
        }
    }
}
