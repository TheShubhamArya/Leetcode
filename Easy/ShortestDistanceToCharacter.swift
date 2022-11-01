// 821. Shortest Distance to a Character

class Solution {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        var result = [Int](repeating: Int.max, count: s.count)
        
        for (i,ch) in s.enumerated() {
            for (j,ch2) in s.enumerated() {
                if ch2 == c {
                    result[i] = min(result[i],abs(j-i))
                }
            }
        }
        
        return result
    }
}
