// 692. Top K Frequent Words
// Given an array of strings words and an integer k, return the k most frequent strings.
// Return the answer sorted by the frequency from highest to lowest. Sort the words with the same frequency by their lexicographical order

class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var dictionary = [String:Int]()
        var output = [String]()
        var k = k
        for word in words {  
            if dictionary[word] == nil {
                dictionary[word] = 1
            } else {
                dictionary.updateValue(dictionary[word]! + 1, forKey: word)
            }
        }
        
        var sortedDictionary = dictionary.sorted(by: {$0.value > $1.value || ($0.value == $1.value && $0.key < $1.key)}) 
        
        for (word, num) in sortedDictionary {
            if k == 0 {
                break
            }
            output.append(word)
            k -= 1
        }
        
        return output
    }
}
