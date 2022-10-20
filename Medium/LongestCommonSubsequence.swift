// 1143. Longest Common Subsequence

class Solution {
    func longestCommonSubsequence(_ text1: String, _ text2: String) -> Int {
        let text1Array = Array(text1)
        let text2Array = Array(text2)
        var matrix = [[Int]](repeating: [Int](repeating: 0, count: text2.count+1), count: text1.count+1)
        for i in 1..<text1.count+1 {
            for j in 1..<text2.count+1 {
                if text1Array[i-1] == text2Array[j-1] {
                    matrix[i][j] = matrix[i-1][j-1] + 1
                } else {
                    matrix[i][j] = max(matrix[i-1][j], matrix[i][j-1])
                }
            }
        }
        return matrix[text1.count][text2.count]
    }
}
