// 1576. Replace All ?'s to Avoid Consecutive Repeating Characters

class Solution {
    func modifyString(_ s: String) -> String {
        let alphabet = ["a","b","c"]
        var sArray = Array(s)
        var output = ""
        if s.count == 1 && s == "?" {return "a"}
        for (i,character) in sArray.enumerated() {
            if character == "?"{
                for al in alphabet {
                    if i - 1 >= 0 && i + 1 < sArray.count {
                        if al != String(sArray[i-1]) && al != String(sArray[i+1]){
                            sArray[i] = Character(al)
                            output += al
                            break
                        }
                    } else if i - 1 < 0 {
                        if al != String(sArray[i+1]){
                            output += al
                            sArray[i] = Character(al)
                            break
                        }
                    } else if i + 1 >= sArray.count{
                        if al != String(sArray[i-1]){
                            output += al
                            sArray[i] = Character(al)
                            break
                        }
                    }
                }
            } else {
                output += String(character)
            }
        }
    
        return output
    }
}
