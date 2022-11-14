// 2053. Kth Distinct String in an Array

class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var dict = [String:Int]()
        for (i,str) in arr.enumerated() {
            if dict[str] == nil {
                dict[str] = i
            } else {
                dict[str] = -1
            }
        }
        let sortedArray = dict.sorted(by:{$0.value < $1.value})
        var k = k
        for (key,val) in sortedArray {
            if val != -1 {
                k -= 1
            }
            if k == 0 {
                return key
            }
        }
        return ""
    }
}
