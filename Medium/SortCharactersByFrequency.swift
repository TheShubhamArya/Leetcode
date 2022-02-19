// 451.

class Solution {
    func frequencySort(_ s: String) -> String {
        var output : String = ""
        var dict = [Character: Int]()
        
        for char in s {
            if dict[char] == nil {
                dict[char] = 1
            } else {
                dict.updateValue(dict[char]! + 1, forKey: char)
            }
        }
        
        let sortedDict = dict.sorted(by: {$0.value > $1.value})
        
        for (char, num) in sortedDict {
            for i in 0..<num {
                output.append(char)
            }
        }
        
        return output
    }
}
