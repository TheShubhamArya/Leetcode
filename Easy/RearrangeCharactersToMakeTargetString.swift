// 2287. Rearrange Characters to Make Target String

class Solution {
    func rearrangeCharacters(_ s: String, _ target: String) -> Int {
        var result = Int.max
        var targetChars = [Character:Int]()
        for char in target {
            targetChars[char] = (targetChars[char] ?? 0) + 1
        }
        var sDict = [Character:Int]()
        for char in s {
            if targetChars[char] != nil {
                sDict[char] = (sDict[char] ?? 0) + 1
            }
        }
        for ch in target {
            if sDict[ch] == nil {
                return 0
            }
            if sDict[ch]! < targetChars[ch]! {
                return 0
            } else if sDict[ch]! < targetChars[ch]! {
                return sDict[ch]!
            } else {
                result = min(result, sDict[ch]!/targetChars[ch]!)
            }
        }
        return result
    }
}
