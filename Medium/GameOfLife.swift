// 289. Game of Life

class Solution {
    func gameOfLife(_ board: inout [[Int]]) {
        
        var flipSet = Set<[Int]>()
        
        
        for (i, row) in board.enumerated() {
            for (j, num) in row.enumerated() {
                var live = 0
                if i - 1 >= 0 {
                    if board[i-1][j] != 0 {
                        live += 1
                    }
                } 
                if j - 1 >= 0 {
                    if board[i][j-1] != 0 {
                        live += 1
                    }
                }
                if i - 1 >= 0 && j - 1 >= 0 {
                    if board[i-1][j-1] != 0 {
                        live += 1
                    }
                }
                
                if i + 1 < board.count {
                    if board[i+1][j] != 0 {
                        live += 1
                    }
                }
                
                if j + 1 < board[0].count {
                    if board[i][j+1] != 0 {
                        live += 1
                    }
                }
                
                if i + 1 < board.count && j + 1 < board[0].count {
                    if board[i+1][j+1] != 0 {
                        live += 1
                    }
                }
                
                if i - 1 >= 0 && j+1 < board[0].count{
                    if board[i-1][j+1] != 0 {
                        live += 1
                    }
                }
                if j - 1 >= 0 && i+1 < board.count{
                    if board[i+1][j-1] != 0 {
                        live += 1
                    }
                }
                
                if num == 1 && (live < 2) {
                    flipSet.insert([i,j])
                } else if num == 1 && (live >= 2 && live <= 3) {
                    board[i][j] = 1
                } else if num == 1 && (live > 3) {
                    flipSet.insert([i,j])
                } else if num == 0 && live == 3 {
                    flipSet.insert([i,j])
                }
            }
        }
        
        for values in flipSet {
            let i = values[0]
            let j = values[1]
            board[i][j] = board[i][j] == 0 ? 1 : 0
        }
        
    }
}
