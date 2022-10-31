// 441. Arranging Coins

class Solution {
    func arrangeCoins(_ n: Int) -> Int {
        var counter = 0
        var n = n
        while n > 0 {
            n = n - (counter + 1)
            counter += 1
        }
        return n == 0 ? counter : counter - 1
    }
}
