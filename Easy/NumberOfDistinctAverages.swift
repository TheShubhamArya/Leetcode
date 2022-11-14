// 2465. Number of Distinct Averages

class Solution {
    func distinctAverages(_ nums: [Int]) -> Int {
        var nums = nums.sorted(by: <)
        var uniqueAverage = Set<Int>()
        var result = 0
        while !nums.isEmpty {
            let maximum = nums.removeLast()
            let minimum = nums.removeFirst()
            let sum = maximum + minimum
            let (isInserted,_) = uniqueAverage.insert(sum)
            if isInserted {
                result += 1
            }
        }
        return result
    }
}
