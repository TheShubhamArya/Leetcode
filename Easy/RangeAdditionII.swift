// 598. Range Addition II

class Solution {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        if ops.isEmpty {
            return m*n
        }
        var rows = Int.max
        var cols = Int.max
        for op in ops {
            rows = min(rows, op[0])
            cols = min(cols, op[1])
        }
        return rows*cols
    }
}
