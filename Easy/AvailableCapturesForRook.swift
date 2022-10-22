// 999. Available Captures for Rook

class Solution {
    func numRookCaptures(_ board: [[Character]]) -> Int {
        var availableCaptures = 0
        var endSearching = false
        for (i, row) in board.enumerated() {
            for (j, piece) in row.enumerated() {
                if piece == "R" {
                    var i2 = i
                    while i2 >= 0 && board[i2][j] != "B" {
                        if board[i2][j] == "p" {
                            availableCaptures += 1
                            break
                        }
                        i2 -= 1
                    }
                    i2 = i
                    while i2 < 8 && board[i2][j] != "B" {
                        if board[i2][j] == "p" {
                            availableCaptures += 1
                            break
                        }
                        i2 += 1
                    }
                    
                    var j2 = j
                    while j2 < 8 && board[i][j2] != "B" {
                        if board[i][j2] == "p" {
                            availableCaptures += 1
                            break
                        }
                        j2 += 1
                    }
                    
                    j2 = j
                    while j2 >= 0 && board[i][j2] != "B" {
                        if board[i][j2] == "p" {
                            availableCaptures += 1
                            break
                        }
                        j2 -= 1
                    }
                    endSearching = true
                    break
                }
            }
            if endSearching {
                break
            }
        }
        
        return availableCaptures
    }
}
