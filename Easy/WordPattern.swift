// 290. Word Pattern

class Solution {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        
        var dict = [Character:String]()
        
        var sArray = s.components(separatedBy: " ")
        
        if sArray.count != pattern.count {
            return false
        }
        
        for (i,char) in pattern.enumerated() {
            
            if let ke = dict.first(where: {$0.value == sArray[i]})?.key { 
                if ke != char {
                    return false
                }
            }
            if dict[char] == nil {
                dict[char] = sArray[i]
            } else if dict[char] != sArray[i] {
                return false
            }
        }
        
        return true
    }
}
