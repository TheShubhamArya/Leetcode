// 39. Combination sum

class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var output = [[Int]]()
        backtrack(candidates, target, [],0,0,&output)
        return output
    }
    
    func backtrack(_ candidates: [Int], _ target: Int,_ array: [Int],_ total: Int,_ i:Int,_ output: inout [[Int]]) {
        var array = array
        if target == total {
            output.append(array)
            return
        }
        
        if i >= candidates.count || total > target {
            return
        }
        
        array.append(candidates[i])
        backtrack(candidates, target, array, total + candidates[i], i, &output)
        array.removeLast() 
        backtrack(candidates, target, array, total, i + 1, &output)
    }
}
