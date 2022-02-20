// 1945. Sum of Digits of String After Convert
class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        var output = 0
        var k = k
        var s = s
        var isFirstTime = true
        var temp = ""
        
        // loops k times
        while k > 0 {
            
            var tempInt = 0
            for char in s {
                if isFirstTime { // The first time, the contents of s will be characters
                    temp += convertToNumber(with: char)
                } else { // After the first time, the contents of s will be digits
                    tempInt += Int(String(char))!
                }
            }
            
            s = isFirstTime ? temp : String(tempInt) // Checks what to put for contents of s depending if it was the first time or not
            
            if k == 1 {
                for char in s {
                    output += Int(String(char))! // if it is the last iteration, calculate the output
                }
            }
            
            isFirstTime = false 
            k -= 1
        }
        
        return output
    }
    
    func convertToNumber(with char: Character) -> String { // Converts character to ASCII values and returns these values as String
        let base = Character("a").utf8.first!
        let value = char.utf8.first!
        return String(Int(value) - Int(base) + 1)
    }
}
