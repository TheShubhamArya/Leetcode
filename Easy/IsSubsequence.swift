// 392. Is Subsequence

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {
            return true
        }
        let sArray = Array(s)
        let tArray = Array(t)
        var current = 0
        
        for tChar in tArray {
            if tChar == sArray[current] {
                current += 1
            }
            if current == sArray.count {
                break
            }
        }
        
        if current < sArray.count {
            return false
        }
        
        return true
    }
}
