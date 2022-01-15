class Solution {
    func longestDiverseString(_ a: Int, _ b: Int, _ c: Int) -> String {
        
        var output = ""
        var a = a
        var b = b
        var c = c
        var useHighest = true
        var lastUsed = ""
        
        while a != 0 || b != 0 || c != 0 {
            
            if useHighest {
                // If letter is highest and was not used last
                if a >= b && a >= c && lastUsed != "a"{
                    (output, a, lastUsed) = createOutputString(with: "a", output, a, useHighest)
                } else if b >= a && b >= c && lastUsed != "b"{ 
                    (output, b, lastUsed) = createOutputString(with: "b", output, b, useHighest)
                } else if c >= a && c >= b && lastUsed != "c"{
                    (output, c, lastUsed) = createOutputString(with: "c", output, c, useHighest)
                } else {
                    break
                }
                
            } else {
                // If letter is second highest AND greater than 0 AND was not used last
                if ((a >= b && a <= c) || (a >= c && a <= b)) && a > 0 && lastUsed != "a"{ 
                    (output, a, lastUsed) = createOutputString(with: "a", output, a, useHighest)
                } else if ((b >= c && b <= a) || (b >= a && b <= c)) && b > 0 && lastUsed != "b"{
                    (output, b, lastUsed) = createOutputString(with: "b", output, b, useHighest)
                } else if ((c >= a && c <= b) || (c >= b && c <= a)) && c > 0 && lastUsed != "c"{
                    (output, c, lastUsed) = createOutputString(with: "c", output, c, useHighest)
                } 
                // When one letter is greater than 0 while others are zero and that letter is not last used
                else if a != 0 && b == 0 && c == 0 && lastUsed != "a" {
                    (output, a, lastUsed) = createOutputString(with: "a", output, a, useHighest)
                     break
                } else if b != 0 && a == 0 && c == 0 && lastUsed != "b" {
                    (output, b, lastUsed) = createOutputString(with: "b", output, b, useHighest)
                     break
                } else if a == 0 && b == 0 && c != 0 && lastUsed != "c" {
                    (output, c, lastUsed) = createOutputString(with: "c", output, c, useHighest)
                     break
                }
                
            }
            
            useHighest = !useHighest
        }
        
        return output
    }
    
    func createOutputString(with letter: String,_ output: String,_ num: Int,_ high: Bool) -> (String, Int, String) {
        var output = output
        var num = num
        if num >= 2 && high {
            output.append(letter)
            output.append(letter)
            num -= 2
        } else {
            output.append(letter)
            num -= 1
        }
        return (output, num, letter)
    }
}
