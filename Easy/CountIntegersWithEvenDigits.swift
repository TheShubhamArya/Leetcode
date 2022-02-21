// 2180. Count Integers With Even Digit Sum

class Solution {
    func countEven(_ num: Int) -> Int {
        var num = num
        var temp = num
        var sum = 0
        while num > 0 {
          sum += num % 10
          num /= 10
        }
        return sum % 2 == 0 ? temp / 2 : (temp-1)/2
    }
}
