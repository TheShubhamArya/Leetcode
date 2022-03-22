// 389. Find the Difference

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var dict = [Character:Int]()
        
        for ch in s {
            if dict[ch] == nil {
                dict[ch] = 0
            } 
            dict[ch] = dict[ch]! + 1
        }
        
        for ch in t {
            if dict[ch] != nil {
                dict[ch] = dict[ch]! - 1
            } else {
                return ch
            }
            if dict[ch] == 0 {
                dict[ch] = nil
            }
        }
        return dict.keys.first ?? Character("")
    }
}
