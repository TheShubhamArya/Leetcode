// 1662. Check If Two String Arrays are Equivalent

class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var string1 = ""
        var string2 = ""
        for word in word1 {
            string1 += word
        }
        for word in word2 {
            string2 += word
        }
        
        return string1 == string2 ? true : false
    }
}
