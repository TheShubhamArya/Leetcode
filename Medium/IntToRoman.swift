class Solution {
    func intToRoman(_ num: Int) -> String {
        var output : String = ""
        var num = num
        let dictionary : [Int:String] = [1:"I",4:"IV",5:"V",9:"IX",10:"X",40:"XL",50:"L",90:"XC",100:"C",400:"CD",500:"D",900:"CM",1000:"M"]
        let sortedDict = dictionary.sorted(by: >)
        
        for (key,value) in sortedDict {
            let div = num / key
            num = num % key
            for _ in 0..<div {
                output.append(value)
            }
        }
        
        return output
    }
}
