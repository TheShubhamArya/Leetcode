// 2319. Check if Matrix Is X-Matrix

class Solution {
    func checkXMatrix(_ grid: [[Int]]) -> Bool {
        
        for (i,row) in grid.enumerated() {
            for (j, num) in row.enumerated() {
                if i == j {
                    if num == 0 {return false}
                } else if i + j == grid.count - 1 {
                    if num == 0 {return false}
                } else {
                    if num != 0 {return false}
                }
            }
        }
        return true
    }
}
