// 524. Longest Word in Dictionary through Deleting

class Solution {
    func findLongestWord(_ s: String, _ dictionary: [String]) -> String {
        var longestWord = ""
        let dictionary = dictionary.sorted(by: { $0.count > $1.count})
        
      // Go through each word in dictionary from largest to smallest order
        for word in dictionary {
            
            if word.count >= longestWord.count {
              
                var sDuplicate = s
                var longestWordFound = true
              // check if character in a word is present in s. If it is present and found at index i, remove all the first i index in the string s. 
                for char in word {
                    
                    if sDuplicate.contains(char) {
                        var index = 0
                        var found = false
                        for (i,c) in sDuplicate.enumerated() {
                            if c == char {
                                index = i
                                found = true
                                break
                            }
                        }
                        sDuplicate.removeFirst(index+1)
                        if !found {
                            longestWordFound = false
                            break
                        }
                        
                    } else {
                        longestWordFound = false
                        break
                    }

                }
                
                if longestWordFound {
                    if (word.count > longestWord.count) || (word.count == longestWord.count && word < longestWord) {
                        longestWord = word
                    }
                    
                }
            } else {
                break
            }
            
            
        }
        return longestWord
    }
}
