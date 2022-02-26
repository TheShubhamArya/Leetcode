// 18. 4Sum

class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var output = [[Int]]()
        var nums = nums.sorted()

        for (i,num1) in nums.enumerated() {
            let nums2 = Array(nums[i+1..<nums.count])
            for (j, num2) in nums2.enumerated() {

                var left = j + 1
                var right = nums2.count - 1

                while left < right{
                    let sum = num1 + num2 + nums2[left] + nums2[right]
                    if sum < target {
                        left += 1
                    } else if sum > target {
                        right -= 1
                    } else {
                        let array = [num1,num2,nums2[left],nums2[right]].sorted()
                        if !output.contains(array){
                            output.append(array)
                        }
                        left += 1
                        right -= 1
                    }
                }
            }
        }

        return output
    }
}
