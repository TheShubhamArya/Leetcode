// 1380. Lucky Numbers in a Matrix

class Solution {
    func luckyNumbers (_ matrix: [[Int]]) -> [Int] {
        var luckyValues = [Int]()
        var rows = Set<Int>()
        var cols = [Int]()
        for i in 0..<matrix.count {
            var minInRow = matrix[i].min() ?? matrix[i][0]
            rows.insert(minInRow)
        }
        for j in 0..<matrix[0].count {
            var maxInCol = matrix[0][j]
            for i in 0..<matrix.count {
                maxInCol = max(maxInCol,matrix[i][j])
            }
            cols.append(maxInCol)
        }
        for col in cols {
            if rows.contains(col) {
                luckyValues.append(col)
            }
        }
        return luckyValues
    }
}
