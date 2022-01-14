class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {return ""}
        var output = ""
        let start = Array(strs[0])
        let slicedStrs = Array(strs[1..<strs.count])
        
        for (i,char) in start.enumerated() {
            for str in slicedStrs {
                let array = Array(str)
                if i >= array.count {
                    return output
                } else {
                    if array[i] != char {
                        return output
                    }
                }
            }
            output.append(char)
        }
        return output
    }
}
