// 2177. Find Three Consecutive Integers That Sum to a Given Number

class Solution {
    func sumOfThree(_ num: Int) -> [Int] {
        var output = [Int]()
        var middleNum = num / 3
        var firstNum = middleNum - 1
        var lastNum = middleNum + 1
        if firstNum + middleNum + lastNum == num {
            let array = [firstNum, middleNum, lastNum]
            output = array
        }
        return output
    }
}
