// 997. Find the Town Judge

class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        if trust.isEmpty && n == 1 {
            return 1
        } else if trust.isEmpty && n > 1 {
            return -1
        }
        var trustee = [Int](repeating: 0, count: n+1)
        var truster = [Int](repeating: 0, count: n+1)
        for people in trust {
            trustee[people[0]] += 1
            truster[people[1]] += 1
        }
        for (i,(t1,t2)) in zip(truster,trustee).enumerated() {
            if t1 == n-1 && t2 == 0 {
                return i
            }
        }
        return -1
    }
}
