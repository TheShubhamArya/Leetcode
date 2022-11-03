// 2131. Longest Palindrome by Concatenating Two Letter Words

class Solution {
    func longestPalindrome(_ words: [String]) -> Int {
        var result = 0
        var wordDict = [String:Int]()
        var alreadyPalindrome = false
        for word in words {
            if wordDict[String(word.reversed())] != nil && wordDict[String(word.reversed())]! > 0 {
                result += 4
                wordDict[String(word.reversed())]! -= 1
            } else {
                wordDict[word] = (wordDict[word] ?? 0) + 1
            }
            
        }
        for (key,val) in wordDict {
            if key == String(key.reversed()) && val == 1{
                result += 2
                break
            }
        }
        return result 
    }
}
