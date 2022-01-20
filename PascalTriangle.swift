// 118. Pascal's triangle

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result = [[Int]]()
        var n = 0
        
        while n < numRows {
            var array = [Int](repeating: 1, count: n + 1)
            if n >= 2 {
                let prev = result[n - 1]
                var i = 0
                while i <= n {
                    if i > 0 && i < n {
                        array[i] = prev[i] + prev[i-1]
                    }
                    i += 1
                }
            }
            result.append(array)
            n += 1
        }
    
        return result
    }
}
