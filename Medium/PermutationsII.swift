// 47. Permutations II

class Solution {
    func permuteUnique(_ nums: [Int]) -> [[Int]] {
        var output = [[Int]]()
        var nums = nums
        explore(&nums,&output,0)
        return output
    }
    
    func explore(_ nums: inout [Int],_ output: inout [[Int]],_ counter : Int){
        if !output.contains(nums) {
            output.append(nums)
        }
        for i in counter..<nums.count {
            nums.swapAt(i,counter)
            explore(&nums,&output, counter + 1)
            nums.swapAt(i, counter)
        }
    }
}
