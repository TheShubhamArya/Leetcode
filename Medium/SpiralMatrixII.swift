// 59. Spiral Matrix II

class Solution {
    func generateMatrix(_ n: Int) -> [[Int]] {
        var output = [[Int]](repeating: [Int](repeating: 0, count:n), count: n)
        
        var left = 0
        var right = n - 1
        var top = 0
        var bottom = n - 1
        var count = 1
        
        while count <= n*n {

            for j in left...right {
                if count <= n*n {
                    output[top][j] = count
                    count += 1
                }
            }
            top += 1
            
            if top <= bottom {
                for i in top...bottom {
                    if count <= n*n {
                        output[i][right] = count
                        count += 1
                    }
                }
            }
            right -= 1
            
            if left <= right {
                for j in (left...right).reversed() {
                    if count <= n*n {
                        output[bottom][j] = count 
                        count += 1
                    }
                }
            }
            bottom -= 1
            
            if count >= n*n {
                break
            }
            
            for i in (top...bottom).reversed() {
                if count <= n*n {
                    output[i][left] = count 
                    count += 1
                }
            }
            left += 1
        }
        
        
        return output
    }
}
