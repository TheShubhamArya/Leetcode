// 1160. Find Words That Can Be Formed by Characters

class Solution {
    func countCharacters(_ words: [String], _ chars: String) -> Int {
        var result = 0
        var charDict = [Character:Int]()
        for char in chars {
            charDict[char] = (charDict[char] ?? 0) + 1
        }
        for word in words {
            var tempDict = charDict
            var found = true
            for char in word {
                if tempDict[char] == nil {
                    found = false
                    break
                } else {
                    if tempDict[char]! > 0 {
                        tempDict[char] = tempDict[char]! - 1
                    } else {
                        found = false
                        break
                    } 
                }
            }
            if found {
                result += word.count
            }
        }
        return result
    }
}
