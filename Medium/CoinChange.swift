// 322. Coin Change

class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 {return 0}
        var result = [Int](repeating: amount + 1, count: amount + 1)
        result[0] = 0
        for i in 1...amount {
            for coin in coins {
                if coin <= i {
                    result[i] = min(result[i],result[i-coin]+1)
                }
            }
        }
        return result[amount] > amount ? -1 : result[amount]
    }
}
