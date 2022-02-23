// 697 Degree of an array
class Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var output = -1
        var dictionary : [Int:[Int]] = [:]
        
        for (i,num) in nums.enumerated() {
            if dictionary[num] == nil {
                dictionary[num] = []
            }
            dictionary[num]!.append(i)
        }
        
        var degree = 0
        for (key,arr) in dictionary {
            if arr.count > degree {
                degree = arr.count
                output = arr.last! - arr.first! + 1
            } else if arr.count == degree {
                let temp = arr.last! - arr.first! + 1
                if output < 0 {
                    output = temp
                } else {
                    output = min(temp, output)
                }
            }
        }
        
        return output
    }
}
