// 744. Find Smallest Letter Greater Than Target

class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var output : Character = Character("a")
        var dict = [Character: Int]()
        var maximum = Int.min
        // Get ASCII value for a letter
        let targetNum = Int((target).utf16.first!)
        
        for letter in letters {
        
            let letNum = Int((letter).utf16.first!)
            if letNum - targetNum != 0 { // If not the same character
                dict[letter] = letNum - targetNum
                maximum = max(maximum, dict[letter]!) 
            }
        }
        
        if maximum < 0 { // if max < 0, then we use the wrap around i.e. Z to A
            output = dict.sorted(by: {$0.value < $1.value}).first!.key
        } else { // if max > 0 then we take the loweest positive value
            let positiveNums = dict.filter{$0.value > 0}
            output = positiveNums.sorted(by: {$0.value < $1.value}).first!.key
        }
        return output
    }
}
