// 38. Count and say
class Solution {
    func countAndSay(_ n: Int) -> String {
        var current = "1"
        if n == 1 {
            return current
        }
        
        for _ in 2...n {
            let array = Array(current)
            current = ""
            var numCount = 1
            for i in 0..<array.count {
                if i + 1 < array.count {
                    if array[i] == array[i+1] {
                        numCount += 1
                    } else {
                        current.append(String(numCount) ?? "1")
                        current.append(array[i])
                        numCount = 1
                    }
                } else {
                    current.append(String(numCount) ?? "1")
                    current.append(array[i])
                }
            }
        }
        return current
    }
}
