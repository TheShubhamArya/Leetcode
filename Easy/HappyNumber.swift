class Solution {
    func isHappy(_ n: Int) -> Bool {
        
        var n = n
        var numberFound = Set<Int>()
        
        while n != 1 {
            
            let (isNotFound, _) = numberFound.insert(n)
            if !isNotFound {
                return false
            }
            
            var sum = 0
            while n != 0 {
                var div = n  % 10
                sum += div*div
                n = n / 10
            }
            
            // var nString = String(n) ?? "0"
            // var nArray = Array(nString)
            // var sum = 0
            // for nChar in nArray {
            //     let num = Int(String(nChar)) ?? 0
            //     sum += (num*num)
            // }
            
            n = sum 
        }
        
        return true
    }
}
