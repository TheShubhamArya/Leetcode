// 2347. Best Poker Hand

class Solution {
    func bestHand(_ ranks: [Int], _ suits: [Character]) -> String {
        var ranksMap = [Int:Int]()
        var suitsMap = [Character:Int]()
        
        for (rank,suit) in zip(ranks, suits) {
            ranksMap[rank] = (ranksMap[rank] ?? 0) + 1
            suitsMap[suit] = (suitsMap[suit] ?? 0) + 1
        }
        
        if (suitsMap.first?.value ?? 0) == 5 {
            return "Flush"
        }
        
        var maxFrequency = 0
        for (rank, frequency) in ranksMap {
            maxFrequency = max(maxFrequency, frequency)
        }
        
        if maxFrequency == 2 {
            return "Pair"
        } else if maxFrequency > 2 {
            return "Three of a Kind"
        }
        
        
        return "High Card"
    }
}
