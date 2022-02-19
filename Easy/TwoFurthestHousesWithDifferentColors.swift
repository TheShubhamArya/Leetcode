// 2078. Two Furthest Houses With Different Colors

class Solution {
    func maxDistance(_ colors: [Int]) -> Int {
        var maxDistance = Int.min
        
        for (i,color) in colors.enumerated() {
            if colors.count - 1 - i < maxDistance {
                break
            } else {
                for j in (i+1..<colors.count).reversed() {
                    if colors[j] != color {
                        let distance = j - i
                        maxDistance = max(maxDistance, distance)
                        break
                    }
                }
            }
        }
        
        return maxDistance
    }
}
