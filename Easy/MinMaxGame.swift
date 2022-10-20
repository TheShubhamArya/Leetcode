// 2293. Min Max Game

class Solution {
    func minMaxGame(_ nums: [Int]) -> Int {
        var tempNums = nums
        while tempNums.count > 1 {
            print(tempNums)
            var t = [Int]()
            for i in 0..<tempNums.count/2 {
                var num = 0
                if i % 2 == 0 {
                    num = min(tempNums[2*i],tempNums[2*i+1])
                } else {
                    num = max(tempNums[2*i],tempNums[2*i+1])
                }
                t.append(num)
            }
            tempNums = t
        
        }
        return tempNums[0]
    }
}
