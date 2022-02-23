// 22. Generate Parenthesis
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var output = [String]()
        backtrack(&output,"",n,0,0)
        return output
    }
    
    func backtrack(_ output: inout [String],_ str: String,_ n:Int,_ open: Int,_ close:Int) {
        if str.count == n*2 {
            output.append(str)
            return
        }
        if open < n {
            backtrack(&output,str+"(",n,open+1, close)
        }
        if close < open {
            backtrack(&output,str+")",n,open, close+1)
        }
    }
}
