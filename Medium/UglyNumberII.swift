// 264. Ugly Number II

class Solution {
    func nthUglyNumber(_ n: Int) -> Int {
        var i = 0
        var j = 0
        var k = 0
        var dp = [Int](repeating: 1, count: n)
        for z in 1..<n {
            dp[z] = min(dp[i]*2, dp[j]*3, dp[k]*5)
            if dp[z] == dp[i]*2 {i+=1}
            if dp[z] == dp[j]*3 {j+=1}
            if dp[z] == dp[k]*5 {k+=1}
        }
        return dp[n-1]
    }
}
