// 73. Set Matrix Zeroes

class Solution {
    func setZeroes(_ matrix: inout [[Int]]) {
        
        var zeroRows = Set<Int>()
        var zeroCols = Set<Int>()
        
        for (i,row) in matrix.enumerated() {
            if row.contains(0) {
                for (j,num) in row.enumerated() {
                    if num == 0 {
                        zeroRows.insert(i)
                        zeroCols.insert(j)
                    }
                }
            }
        }
        
        for (i,row) in matrix.enumerated(){
            for (j,num) in row.enumerated() {
                if zeroRows.contains(i) {
                    matrix[i][j] = 0
                }
                if zeroCols.contains(j) {
                    matrix[i][j] = 0
                }
            }
        }
    }
}
