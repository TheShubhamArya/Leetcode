// 1389. Create Target Array in the Given Order

class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var result = [Int]()
        for (num,i) in zip(nums, index) {
            result.insert(num,at: i)
        }
        return result
    }
}
