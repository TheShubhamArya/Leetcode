// 1886. Determine Whether Matrix Can Be Obtained By Rotation
class Solution {
    func findRotation(_ mat: [[Int]], _ target: [[Int]]) -> Bool {
        if mat == target {return true}
        var mat = mat
        var count = 0
        while count < 3 {
            
            var left = 0
            var right = mat.count - 1
            
            while left < right {
                var top = left
                var bottom = right
                for i in 0..<(right-left){
                    let topLeft = mat[top][left+i]
                    mat[top][left+i] = mat[bottom-i][left]
                    mat[bottom-i][left] = mat[bottom][right-i]
                    mat[bottom][right-i] = mat[top+i][right]
                    mat[top+i][right] = topLeft
                }
                left += 1
                right -= 1
            }
            
            if mat == target {
                return true
            }
            count += 1
        }
        return false
    }
}
