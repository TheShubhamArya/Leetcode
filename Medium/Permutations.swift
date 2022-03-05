// 46. Permutations6. 
class Solution {
    
    func permute(_ nums: [Int]) -> [[Int]] {
        var output = [[Int]]()
        var nums = nums
        explore(&nums, &output, 0)
        return output
    }
    
    func explore(_ nums: inout [Int],_ output: inout [[Int]],_ counter:Int) {
        if !output.contains(nums) {
            output.append(nums)
        }
        
        for i in counter..<nums.count{
            nums.swapAt(counter,i)
            explore(&nums, &output, counter + 1)
            nums.swapAt(counter,i)
        }
    }
    
}
