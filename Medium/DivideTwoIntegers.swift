class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        var output = 0
        var dividend = dividend
        var divisor = divisor
        var negativeFlag = false
        
        // Makes sure numbers are positive and negative flag is set
        if dividend < 0 && divisor < 0 {
            negativeFlag = false
        } else if dividend < 0 || divisor < 0{
            negativeFlag = true
        }
        dividend = abs(dividend)
        divisor = abs(divisor)
        
        
        while dividend >= divisor {
            var temp = divisor
            var multiply = 1
            // increments the multiplier so that thee complexity is O(logn)
            while dividend >= temp {
                dividend -= temp
                output += multiply
                multiply += multiply
                temp += temp
            }
        }
        
        if negativeFlag {
            output = 0 - output
        }
        
        if output > Int32.max {
            return 2147483647
        } else if output < Int32.min {
            return -2147483648
        }
        
        return output
    }
}
