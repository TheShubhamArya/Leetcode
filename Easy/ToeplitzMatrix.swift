// 766. Toeplitz Matrix

class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {

        for l in 0..<matrix[0].count {
            var i = 0
            var j = l
            var val = matrix[i][j]
            while i < matrix.count && j < matrix[0].count {
                if val != matrix[i][j] {
                    return false
                }
                i += 1
                j += 1
            }
        }
        for l in 0..<matrix.count {
            var i = l
            var j = 0
            var val = matrix[i][j]
            while i < matrix.count && j < matrix[0].count {
                if val != matrix[i][j] {
                    return false
                }
                i += 1
                j += 1
            }
        }
        
        return true
    }
}
