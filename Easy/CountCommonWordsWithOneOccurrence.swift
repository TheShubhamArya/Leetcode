// 2085. Count Common Words With One Occurrence

class Solution {
    func countWords(_ words1: [String], _ words2: [String]) -> Int {
        var result = 0
        var dict1 = [String:Int]()
        var dict2 = [String:Int]()
        for word1 in words1 {
            dict1[word1] = (dict1[word1] ?? 0) + 1
        }
        for word2 in words2 {
            dict2[word2] = (dict2[word2] ?? 0) + 1
        }
        for (key1,val1) in dict1 {
            if val1 == 1 {
                if dict2[key1] != nil {
                    if dict2[key1]! == 1 {
                        result += 1
                    }
                }
            }
        }
        return result
    }
}
