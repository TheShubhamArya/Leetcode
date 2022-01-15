class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        var output = [String]()
        let dictionary : [Character:[String]] = ["2":["a","b","c"], "3":["d","e","f"], "4":["g","h","i"], "5":["j","k","l"], "6":["m","n","o"], "7":["p","q","r","s"], "8":["t","u","v"], "9":["w","x","y","z"]]
        
        for digit in digits {
            let letters = dictionary[digit] ?? []
            if output.isEmpty {
                output = letters
            } else {
                var temp = [String]()
                for letter in letters {
                    for current in output {
                        temp.append(current+letter)
                    }
                }
                output = temp
            }
        }
        
        return output
    }
}
