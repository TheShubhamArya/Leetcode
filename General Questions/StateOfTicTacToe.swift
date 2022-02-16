// This functions returns the state of the tic tac toe. It was asked in an Apple interview. 

func resultForT3(_ matrix : [[Character]]) -> String {
    
    var rowSet = Set<String>()
    var colSet = Set<String>()
    var diag1Set = Set<String>()
    var diag2Set = Set<String>()
    var counter = 0
    
    for (i,row) in matrix.enumerated() {
        for (j,_) in row.enumerated() {
            if i == j {
                diag1Set.insert("\(matrix[i][j])")
            }
            
            if (i+j) == (matrix.count - 1) {
                diag2Set.insert("\(matrix[i][j])")
            }
            
            rowSet.insert("\(matrix[i][j])")
            colSet.insert("\(matrix[j][i])")
            
            if matrix[i][j] != "." {
                counter += 1
            }
        }
        
        if rowSet.count == 1 && !rowSet.contains(".") {
            return "\(rowSet.removeFirst()) wins in row \(i+1)"
        } else if colSet.count == 1 && !colSet.contains("."){
            return "\(colSet.removeFirst()) wins in column \(i+1)"
        }
        
        rowSet.removeAll()
        colSet.removeAll()
    }
    
    if diag1Set.count == 1{
        return "\(diag1Set.removeFirst()) wins in diagonal 1"
    } else if diag2Set.count == 1{
        return "\(diag2Set.removeFirst()) wins in diagonal 2"
    } else if counter == matrix.count*matrix.count {
        return "Tied"
    } else {
        return "In progress"
    }
}

let matrix: [[Character]] = [["X",".","O"],
                             ["O","O","O"],
                             [".","X","X"],
                            ]
print(resultForT3(matrix))
