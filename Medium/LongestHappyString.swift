// 1405. Longest Happy String

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
                if a >= b && a >= c && lastUsed != "a"{
                    lastUsed = createOutputString(with: "a", &output, &a, useHighest)
                } else if b >= a && b >= c && lastUsed != "b"{
                    lastUsed = createOutputString(with: "b", &output, &b, useHighest)
                } else if c >= a && c >= b && lastUsed != "c"{
                    lastUsed = createOutputString(with: "c", &output, &c, useHighest)
                } else {
                    break
                }
                
            } else {
                
                if ((a >= b && a <= c) || (a >= c && a <= b)) && a > 0 && lastUsed != "a"{
                    lastUsed = createOutputString(with: "a", &output, &a, useHighest)
                } else if ((b >= c && b <= a) || (b >= a && b <= c)) && b > 0 && lastUsed != "b"{
                    lastUsed = createOutputString(with: "b", &output, &b, useHighest)
                } else if ((c >= a && c <= b) || (c >= b && c <= a)) && c > 0 && lastUsed != "c"{
                    lastUsed = createOutputString(with: "c", &output, &c, useHighest)
                } else if a != 0 && b == 0 && c == 0 && lastUsed != "a" {
                    lastUsed = createOutputString(with: "a", &output, &a, useHighest)
                     break
                } else if b != 0 && a == 0 && c == 0 && lastUsed != "b" {
                    lastUsed = createOutputString(with: "b", &output, &b, useHighest)
                     break
                } else if a == 0 && b == 0 && c != 0 && lastUsed != "c" {
                    lastUsed = createOutputString(with: "c", &output, &c, useHighest)
                     break
                }
                
            }
            
            useHighest = !useHighest
        }
        
        return output
    }
    
    func createOutputString(with letter: String,_ output: inout String,_ num: inout Int,_ high: Bool) -> String {
        if num >= 2 && high {
            output.append(letter)
            output.append(letter)
            num -= 2
        } else {
            output.append(letter)
            num -= 1
        }
        return letter
    }
}
