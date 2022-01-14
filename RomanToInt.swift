class Solution {
    func romanToInt(_ s: String) -> Int {
        var output = 0
        let dictionary : [Character:Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
        var prev : Character = "M"
        
        for char in s {
            let curr = dictionary[char] ?? 0
            let previous = dictionary[prev] ?? 0
            if curr > previous{
                output += (curr - 2*previous)
            } else {
                output += curr
            }
            prev = char
        }
        
        return output
    }
}
