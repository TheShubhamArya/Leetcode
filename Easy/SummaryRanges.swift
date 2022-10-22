// 228. Summary Ranges

class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.isEmpty {return []}
        var output = [String]()
      
// NAIVE APPROACH
//         var pairs = [[Int]]()
//         var prev = nums[0]
//         pairs.append([nums[0], nums[0]])
        
//         for i in 1..<nums.count {
//             if nums[i] - prev == 1 {
//                 var pair = pairs[pairs.count-1]
//                 pair[1] = nums[i]
//                 pairs[pairs.count - 1] = pair
//             } else {
//                 pairs.append([nums[i],nums[i]])
//             }
//             prev = nums[i]
//         }
//         for pair in pairs {
//             if pair[0] != pair[1] {
//                 output.append("\(pair[0])->\(pair[1])")
//             } else {
//                 output.append("\(pair[0])")
//             }
//         }
        
        var prev = nums[0]
        var start = nums[0]
        for i in 1..<nums.count {
            if nums[i] - prev != 1 {
                if prev == start {
                    output.append("\(prev)")
                } else {
                    output.append("\(start)->\(prev)")
                }
                start = nums[i]
            }
            prev = nums[i]
        }
        if prev == start {
            output.append("\(prev)")
        } else {
            output.append("\(start)->\(prev)")
        }
        return output
    }
}
