// 5. Longest palindromic substring
class Solution {
    func longestPalindrome(_ s: String) -> String {
        var output = ""
        let sArray = Array(s)
        for (i,_) in sArray.enumerated() {
            let l1 = expandFromMiddle(sArray,i, i)
            let l2 = expandFromMiddle(sArray, i, i + 1)
            
            if l1.count > output.count {
                output = l1
            } 
            if l2.count > output.count {
                output = l2
            }
        }
        return output
    }
    
    func expandFromMiddle (_ s: [Character],_ left: Int,_ right: Int) -> String {
        var temp = [Character]()
        var left = left
        var right = right
        while left >= 0 && right < s.count && s[left] == s[right] {
            if left == right{
                temp.append(s[left]) 
            } else {
                temp.insert(s[left], at: 0)
                temp.insert(s[right], at: temp.count)
            }
            
            left -= 1
            right += 1
        }
        return String(temp)
    }
}
