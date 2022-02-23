// 118. Pascal's triangle

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var output = [[Int]]()
        output.append([1])
        
        for i in 1..<numRows {
            var newRow = [Int](repeating: 1, count: i+1)
            if i > 1 {
                for j in 1...i-1 {
                    newRow[j] = output[i-1][j-1] + output[i-1][j]
                }
            } 
            output.append(newRow)
        }
        
        return output
    }
}
