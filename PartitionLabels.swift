// 763. Partition Labels
class Solution {
    func partitionLabels(_ s: String) -> [Int] {
        var output = [Int]()
        var dict : [Character: Int] = [:]
        var currentIndex = 0
        var sArray = Array(s)
        var prevPartition = 0
        var partition = 0
        
        for (i,char) in s.enumerated() {
            dict[char] = i
        }
        
        while currentIndex < s.count {
            
            var curr = sArray[currentIndex]
            let curPartition = dict[curr] ?? 0
            
            if curPartition > partition {
                partition = curPartition
            }
            
            if partition == currentIndex {
                output.append(partition + 1 - prevPartition)
                currentIndex = partition + 1
                prevPartition = partition + 1
            } else if partition == s.count - 1 {
                output.append(partition + 1 - prevPartition)
                currentIndex = s.count 
            } else {
                currentIndex += 1
            }
        }
        
        return output
    }
}
