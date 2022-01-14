class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        var output = ""
        var rows = [String](repeating: "", count:numRows)
        var delta = -1 
        var index = 0
        
        for char in s {
            
            rows[index].append(String(char))
            if index == numRows - 1 || index == 0 {
                delta *= -1
            }
            index += delta
        }
        
        for row in rows {
            output.append(row)
        }
        
        return output
    }
}
