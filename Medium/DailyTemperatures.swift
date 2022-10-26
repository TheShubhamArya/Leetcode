// 739. Daily Temperatures

class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = [Int](repeating: 0, count: temperatures.count)
        var prev = -1
        for (i,temperature) in temperatures.enumerated() {
            if prev == temperature {
                result[i] = result[i-1] == 0 ? 0 : result[i-1] - 1
            } else {
                for j in i+1..<temperatures.count {
                    if temperature < temperatures[j] {
                        result[i] = j - i
                        break
                    }
                }  
            }
            prev = temperature
        }
        return result
    }
}
