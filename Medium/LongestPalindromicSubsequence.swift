// 516. Longest Palindromic Subsequence
// Same as Longest common subsequence. The only difference is that you compare the same string with its reversed string.
class Solution {
    func longestPalindromeSubseq(_ s: String) -> Int {
        let s1Array = Array(s)
        let s2Array = Array(String(s.reversed()))
        var matrix = [[Int]](repeating: [Int](repeating: 0, count: s.count + 1), count: s.count + 1)
        for i in 1...s.count {
            for j in 1...s.count {
                if s1Array[i-1] == s2Array[j-1] {
                    matrix[i][j] = matrix[i-1][j-1] + 1
                } else {
                    matrix[i][j] = max(matrix[i-1][j], matrix[i][j-1])
                }
            }
        }
        return matrix[s.count][s.count]
    }
}
