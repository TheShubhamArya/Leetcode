// 1299. Replace Elements with Greatest Element on Right Side

class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var output = [Int](repeating: -1, count: arr.count)
        
        for (i,num) in arr.enumerated() {
            if let maxRight = Array(arr[i+1..<arr.count]).max() {
                output[i] = maxRight
            }
        }
        
        return output
    }
}
