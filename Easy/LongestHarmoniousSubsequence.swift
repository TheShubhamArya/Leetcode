// 594. Longest Harmonious Subsequence

class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var dictionary = [Int:Int]()
        var result = 0
        
        for num in nums {
            dictionary[num] = (dictionary[num] ?? 0) + 1
        }
      // Time O(n) 
        for (key,value) in dictionary {
            var prevNum = 0
            if dictionary[key-1] != nil {
                prevNum = dictionary[key-1]!
            }
            var nextNum = 0
            if dictionary[key+1] != nil {
                nextNum = dictionary[key+1]!
            }
            if nextNum != 0 || prevNum != 0 {
                result = max(value + nextNum, value + prevNum, result)
            }
        }
        // Time O(nlogn) becuase of sorting
        // var sortedDict = dictionary.sorted(by: {$0.key < $1.key})
        // var temp = 0
        // var prev = 0
        // for (i,(key,val)) in sortedDict.enumerated() {
        //     if i > 0 {
        //         if key - prev == 1 {
        //             result = max(result, temp + val)
        //         }
        //     }
        //     prev = key
        //     temp = val
        // }
        return result
    }
}
