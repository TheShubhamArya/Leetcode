// 844. Backspace string compare
class Solution {
    
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        
        var sArray = Array(s)
        var tArray = Array(t)
        
        var sNew = ""
        var tNew = ""
        
        var sPointer = s.count - 1
        var tPointer = t.count - 1
        
        var sPoundCounter = 0
        var tPoundCounter = 0
        
        while sPointer >= 0 {
            
            if sArray[sPointer] != "#" {
                if sPoundCounter > 0 {
                    sPoundCounter -= 1
                } else {
                    sNew.append(sArray[sPointer])
                }
            } else {
                sPoundCounter += 1
            }
            sPointer -= 1
        }
        
        while tPointer >= 0 {
            
            if tArray[tPointer] != "#" {
                if tPoundCounter > 0 {
                    tPoundCounter -= 1
                } else {
                    tNew.append(tArray[tPointer])
                }
            } else {
                tPoundCounter += 1
            }
            tPointer -= 1
        }
        
        if sNew == tNew {
            return true
        } else {
            return false
        }
    }
}
