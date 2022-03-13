// 1346. Check If N and Its Double Exist

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var dict = [Int:Int]()
        
        for (i,num) in arr.enumerated() {
            dict[i] = num
        }
        
        for (i,num) in arr.enumerated() {
            let double = num*2
            let filterDict = dict.filter{$0.value == double && $0.key != i}
            if !filterDict.isEmpty{
                return true
            }
        }
        
        return false
    }
}
