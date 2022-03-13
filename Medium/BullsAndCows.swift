// 299. Bulls and Cows

class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bulls = 0
        var cows = 0
        var dictSecret = [Int:Character]()
        var dictGuess = [Int:Character]()
        
        for (i,(s,g)) in zip(secret, guess).enumerated() {
            if s == g {
                bulls += 1
            } else {
                dictSecret[i] = s
                dictGuess[i] = g
            }
        }
        
        for (key,value) in dictSecret {
            var dict = dictGuess.filter({$0.value == value})
            if !dict.isEmpty {
                cows += 1
            }
            for (k,v) in dict {
                dictGuess[k] = nil
                break
            }
        }
        
        return "\(bulls)A\(cows)B"
    }
}
