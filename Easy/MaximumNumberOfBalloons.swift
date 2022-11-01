// 1189. Maximum Number of Balloons

class Solution {
    func maxNumberOfBalloons(_ text: String) -> Int {
        var dict = ["b":0,"a":0,"l":0,"o":0,"n":0]
        for char in text {
            if dict[String(char)] != nil{
                dict[String(char)] = (dict[String(char)] ?? 0) + 1
            }
        }
        var minimum = Int.max
        for (key,val) in dict {
            if key == "o" || key == "l" {
                minimum = min(minimum, val/2)
            } else {
                minimum = min(minimum,val)
            }
        }
        return minimum
    }
}
