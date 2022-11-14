// 1013. Partition Array Into Three Parts With Equal Sum

class Solution {
    func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
        var totalSum = 0
        for num in arr {
            totalSum += num
        }
        if totalSum % 3 != 0 {
            return false
        }
        let thirdOfSum = totalSum / 3
        var currSum = 0
        var count = 0
        for i in 0..<arr.count - 1 {
            currSum += arr[i]
            if currSum == thirdOfSum  && count < 2{
                count += 1
                currSum = 0
            }
        }
        if arr[arr.count - 1] + currSum == thirdOfSum {
            count += 1
        }
        if count == 3 {return true}
        return false
    }
}
