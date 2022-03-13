// 500. Keyboard Row

class Solution {
    func findWords(_ words: [String]) -> [String] {
        var dict : [Character:Int] = ["q":1,"w":1,"e":1,"r":1,"t":1,"y":1,"u":1,"i":1,"o":1,"p":1,"a":2,"s":2, "d":2, "f":2, "g":2,"h":2, "j":2, "k":2, "l":2]
        var result = [String]()
        
        for word in words {
            
            let word_lowercased = word.lowercased()
            var keyboardRow = -1
            var isInSameRow = true
            for char in word_lowercased {
                
                var currentRow = -1
                if dict[char] == nil {
                    currentRow = 3
                } else {
                    currentRow = dict[char]!
                }
                
                if keyboardRow == -1 {
                    keyboardRow = currentRow
                }
                
                if currentRow != keyboardRow && keyboardRow != -1 {
                    isInSameRow = false
                    break
                }
            }
            if isInSameRow {
                result.append(word)
            }

        }
        
        return result
    }
}
