// 1636. 

class Solution {
    func frequencySort(_ nums: [Int]) -> [Int] {
        var output = [Int]()
        var dict = [Int:Int]()
        
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict.updateValue(dict[num]! + 1, forKey: num)
            }
        }
        
        let sortedDict = dict.sorted(by: {$0.value < $1.value || ($0.value == $1.value && $0.key > $1.key)})
        
        for (num,count) in sortedDict {
            for i in 0..<count {
                output.append(num)
            }
        }
        
        return output
    }
}
