// 720. Longest word in dictionary

class Solution {
    func longestWord(_ words: [String]) -> String {
        var output = ""
        var wordSet = Set<String>()
        for word in words {
            wordSet.insert(word)
        }
        
        for word in words {
            if (word.count > output.count) || (word.count == output.count && word < output){
                var good = true
                for i in 1...words.count {
                    if !wordSet.contains(String(word.prefix(i))){
                        good = false
                        break
                    }
                }
                if good {
                    output = word
                }
            }
        }
        return output
    }
}
