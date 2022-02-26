// 3. Longest substring without repeating character 
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var sArray = Array(s)
        var maximum = 0
        
        for (i,char) in sArray.enumerated() {
            var right = i + 1
            var temp = [Character]()
            temp.append(char)
            while right < sArray.count && !temp.contains(sArray[right]) {
                temp.append(sArray[right])
                right += 1
            }
            maximum = max(maximum, temp.count) 
        }
        
        return maximum
    }
}
