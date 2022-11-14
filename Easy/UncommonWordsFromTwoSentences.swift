// 884. Uncommon Words from Two Sentences

class Solution {
    func uncommonFromSentences(_ s1: String, _ s2: String) -> [String] {
        var result = [String]()
        var dict1 = [String:Int]()
        var current = ""
        for ch1 in s1 {
            if ch1 != " " {
                current += String(ch1)
            } else {
                dict1[current] = (dict1[current] ?? 0) + 1
                current = ""
            }
        }
        if !current.isEmpty {
            dict1[current] = (dict1[current] ?? 0) + 1
        }
        current = ""
        for ch2 in s2 {
            if ch2 != " " {
                current += String(ch2)
            } else {
                dict1[current] = (dict1[current] ?? 0) + 1
                current = ""
            }
        }
        if !current.isEmpty {
            dict1[current] = (dict1[current] ?? 0) + 1
        }
        for (key,value) in dict1 {
            if value == 1 {
                result.append(key)
            }
        }
        return result
    }
}
