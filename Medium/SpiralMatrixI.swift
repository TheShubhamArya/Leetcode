// 54. Spiral Matrix

class Solution {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var output = [Int]()
        
        var rowBegin = 0
        var rowEnd = matrix.count - 1
        var colBegin = 0
        var colEnd = matrix[0].count - 1
        var count = 0
        var totalCount = matrix.count * matrix[0].count
        
        while count < totalCount {
            
            for i in colBegin...colEnd {
                if count < totalCount {
                    output.append(matrix[rowBegin][i])
                }
                count += 1
            }
            rowBegin += 1
            
            if rowBegin <= rowEnd {
                for i in rowBegin...rowEnd {
                    if count < totalCount {
                        output.append(matrix[i][colEnd])
                    }
                    count += 1
                }
            }
            
            colEnd -= 1
            
            if count >= totalCount {
                break
            }
            
            if rowBegin <= rowEnd {
                for i in (colBegin...colEnd).reversed() {
                    if count < totalCount {
                        output.append(matrix[rowEnd][i])
                    }
                    count += 1
                }
            }
            rowEnd -= 1
            
            if count >= totalCount {
                break
            }
            
            for i in (rowBegin...rowEnd).reversed() {
                if count < totalCount {
                    output.append(matrix[i][colBegin])
                }
                count += 1
            }
            colBegin += 1
        }
        
        return output
    }
}
