// 15. 3 Sum
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var output = [[Int]]()
        let nums = nums.sorted()
        for (i,num) in nums.enumerated(){
            var start = i+1
            var last = nums.count - 1
            while start < last {
                let sum = num + nums[start] + nums[last]
                if sum == 0 {
                    let array = [num, nums[start],nums[last]]
                    if !output.contains(array){
                        output.append(array)
                    }
                    last -= 1
                    start += 1
                } else if sum > 0 {
                    last -= 1
                } else if sum < 0 {
                    start += 1
                }
            }
        }
        
        return output
    }
}
