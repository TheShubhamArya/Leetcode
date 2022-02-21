//74. Search a 2D Matrix

class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        for row in matrix {
            if row.last! >= target {
               if row.contains(target){
                    return true
                } 
            }
        }
        return false
    }
}
