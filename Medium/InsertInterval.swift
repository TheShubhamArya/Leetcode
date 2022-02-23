// 57. Insert Interval

class Solution {
    func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
        var output = [[Int]]()
        var newIntervalAdded = false
        
        for (i,interval) in intervals.enumerated() {
            
            if newIntervalAdded {
                let lastValues = output.last!
                if interval[0] <= lastValues[0] || interval[0] <= lastValues[1] {
                    output.removeLast()
                    output.append([
                        min(interval[0], lastValues[0]),
                        max(interval[1], lastValues[1])
                    ]) 
                } else {
                    output.append(interval)
                }
            } else {
                if newInterval[1] < interval[0] {
                    output.append(newInterval)
                    output.append(interval)
                    newIntervalAdded = true
                }else if newInterval[0] <= interval[1] || newInterval[0] <= interval[0] {
                    output.append([
                        min(newInterval[0], interval[0]),
                        max(newInterval[1], interval[1])
                    ])
                    newIntervalAdded = true
                } else {
                    output.append(interval)
                }
            }
        }
        
        if !newIntervalAdded {
            output.append(newInterval)
        }
        
        return output
    }
}
