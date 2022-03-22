// 383. Ransom Note

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var dict = [Character:Int]()
        
        for ch in magazine {
            if dict[ch] == nil {
                dict[ch] = 0
            }
            dict[ch] = dict[ch]! + 1
        }
        
        for ch in ransomNote {
            if dict[ch] != nil {
                if dict[ch]! > 0 {
                    dict[ch] = dict[ch]! - 1
                } else {
                    return false
                }
            } else {
                return false
            }
        }
        
        return true
    }
}
