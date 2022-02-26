// 409. Longest Palindrome

class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var output = 0
        var dict = [Character: Int]()
        
        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict.updateValue(dict[char]!+1, forKey: char)
            }
        }
        
        var maxOdd = 0
        for (key,value) in dict {
            if value % 2 == 0 {
                output += value
            } else {
                output += value - 1
                maxOdd = max(maxOdd, value)
            }
        }
        if maxOdd > 0 {
            output -= maxOdd - 1
            output += maxOdd
        }
        return output
    }
}
