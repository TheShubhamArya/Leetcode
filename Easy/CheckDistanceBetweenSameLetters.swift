// 2399. Check Distances Between Same Letters

class Solution {
    func checkDistances(_ s: String, _ distance: [Int]) -> Bool {
        var dict = [Character:Int]()
        for (i,ch) in s.enumerated() {
            if dict[ch] == nil {
                dict[ch] = i + 1
            } else {
                dict[ch] = abs(dict[ch]! - i)
            }
        }
        for (key,val) in dict {
            var index = (Int(key.asciiValue!) ?? 97) - 97
            if val != distance[index] {
                return false
            }
        }
        return true
    }
}
