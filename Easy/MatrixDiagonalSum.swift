// 1572. Matrix Diagonal Sum

class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        for i in 0..<mat.count {
            result += mat[i][i]
        }
        var i = 0
        var j = mat.count - 1
        while i <= mat.count && j >= 0 {
            if i != j {
                result += mat[i][j]
            }
            i += 1
            j -= 1
        }
        return result
    }
}
