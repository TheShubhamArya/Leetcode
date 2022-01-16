// 49. Group Anagrams
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output = [[String]]()
        var dict = [[Character]:[String]]()
        
        for str in strs {
            let key = str.sorted()
            if dict[key] == nil{
                dict[key] = [str]
            } else {
                dict[key]!.append(str)
            }
        }
        for (_,value) in dict {
            output.append(value)
        }
        return output
    }
}
