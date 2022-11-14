// 1295. Find Numbers with Even Number of Digits

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            let strNum = String(num)
            if strNum.count % 2 == 0 {
                result += 1
            }
        }
        return result
    }
}
