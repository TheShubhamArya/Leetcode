// 784. Letter case permutation

class Solution {
    func letterCasePermutation(_ s: String) -> [String] {
        var output = [String]()
        output.append(s)
        getAllCases(&output, Array(s), -1) 
        return output
    }
    
    func getAllCases(_ output: inout [String],_ sArray: [Character],_ cIndex : Int) {
        if !output.contains(String(sArray)) {
            output.append(String(sArray))
        }
        
        for i in cIndex+1..<sArray.count {
            if sArray[i].isLetter {
                var sArray1 = sArray
                sArray1[i] = Character(String(sArray1[i]).uppercased())
                getAllCases(&output, sArray1, i)
                
                var sArray2 = sArray
                sArray2[i] = Character(String(sArray2[i]).lowercased())
                getAllCases(&output, sArray2, i)
                break
            }
        }
    }
}
