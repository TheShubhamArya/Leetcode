// 1748. 

class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var output = 0
        var dict = [Int:Int]()
        
        for num in nums {
            if dict[num] == nil{
                dict[num] = 1
            } else {
                dict.updateValue(dict[num]! + 1, forKey: num)
            }
        }
        
        let filterDict = dict.filter{ $0.value == 1 }
        
        for (num, _) in filterDict {
            output += num
        }
        
        return output
    }
}
