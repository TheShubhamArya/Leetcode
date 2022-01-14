class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var boardSet = Set<String>()
        
        for (i,rows) in board.enumerated() {
            for (j,char) in rows.enumerated() {
                if char != "." {
                    let (isRowDuplicate, _) = boardSet.insert("row \(i) \(char)")
                    let (isColDuplicate, _) = boardSet.insert("col \(j) \(char)")
                    let (isBoxDuplicate, _) = boardSet.insert("box \(i/3) \(j/3) \(char)")
                    if !isRowDuplicate || !isColDuplicate || !isBoxDuplicate {
                        return false
                    }
                }
            }
        }
        return true
    }
}
