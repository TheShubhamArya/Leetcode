// 258. Add Digits
class Solution {
    func addDigits(_ num: Int) -> Int {
        var num = num
        while num > 9 {
            var total = 0
            while num > 0 {
                let a = num % 10
                total += a
                num /= 10
            }
            num = total
        }
        return num
    }
    
//     func addDigits(_ num: Int) -> Int {
//         var strNum = String(num)
        
//         while strNum.count > 1 {
            
//             var total = 0
//             for n in strNum {
//                 total += Int(String(n))!
//             }
//             strNum = String(total)
            
//         }
        
//         return Int(strNum)!
//     }
}
