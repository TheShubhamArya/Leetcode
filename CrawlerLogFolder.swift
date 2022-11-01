// 1598. Crawler Log Folder

class Solution {
    func minOperations(_ logs: [String]) -> Int {
        // O(n) time and space
        // var stack = [String]()
        // for log in logs {
        //     switch(log) {
        //         case "../":
        //             if !stack.isEmpty {
        //                 stack.removeLast()
        //             }
        //             break
        //         case "./":
        //             break
        //         default:
        //             stack.append(log)
        //             break
        //     }
        // }
        // return stack.count
        
        // O(n) time and O(1) space
        var counter = 0
        for log in logs {
            switch(log){
                case "../":
                    if counter > 0 {counter -= 1}
                    break
                case "./":
                    break
                default:
                    counter += 1
                    break
            }
            
        }
        return counter
    }
}
