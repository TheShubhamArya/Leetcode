// 263. Ugly Number

class Solution {
    func isUgly(_ n: Int) -> Bool {
        if n == 0 {return false}
        var n = n
        while n != 0 {
            if n % 2 == 0 {
                n /= 2
            } else if n % 3 == 0 {
                n /= 3
            } else if n % 5 == 0 {
                n /= 5
            } else if n == 1 {
                return true
            } else {
                return false
            }
        }
        return true
    }
}
