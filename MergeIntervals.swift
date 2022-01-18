// 56. Merge Intervals
class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var output = [[Int]]()
        var current = 0
        var previous0 = 0
        var previous1 = 0
        var intervals = intervals.sorted(by: {$0[0] < $1[0]})
        
        while current < intervals.count {
            if output.isEmpty {
                output.append(intervals[current])
            } else {
                // if intervals[cur][0] lies between the previous range
                if intervals[current][0] >= previous0 && intervals[current][0] <= previous1 {
                    _ = output.removeLast()
                    output.append(
                        [
                            min(previous0,intervals[current][0]),
                            max(previous1,intervals[current][1]),
                        ]
                    ) 
                } else {
                    output.append(intervals[current])
                }
            }
            previous0 = output[output.count - 1][0]
            previous1 = output[output.count - 1][1]
            current += 1
        }
        
        return output
    }
}
