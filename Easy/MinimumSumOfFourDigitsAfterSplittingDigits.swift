// 2160. Minimum Sum of Four Digit Number After Splitting Digits

class Solution {
    func minimumSum(_ num: Int) -> Int {
        var numArray = Array(String(num)).sorted(by: <)
        
        var num1 = Int(String(numArray[0]))!
        var num2 = Int(String(numArray[1]))!
        var num3 = Int(String(numArray[2]))!
        var num4 = Int(String(numArray[3]))!
        
        var first = num1*10 + num3
        var second = num2*10 + num4
        
        
        return first + second
    }
}
