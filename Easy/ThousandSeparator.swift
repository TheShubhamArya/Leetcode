// 1556. Thousand Separator

class Solution {
    func thousandSeparator(_ n: Int) -> String {
        var numString = String(n)
        var result = ""
        var count = 0
        for char in numString.reversed() {
            count += 1
            result.append(char)
            if count % 3 == 0 && count < numString.count {
                result.append(".")
            }
        }
        result = String(result.reversed())
        return result
    }
}
