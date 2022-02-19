// 387. 

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character:[Int]]()
        for (i,char) in s.enumerated() {
            if dict[char] == nil {
                dict[char] = [i,1]
            } else {
                dict[char]![1] += 1
            }
        }
        
        var output = Int.max
        for (key, value) in dict {
            if value[1] == 1 {
                output = min(output, value[0])
            }
         }
        
        return output == Int.max ? -1 : output
    }
}
