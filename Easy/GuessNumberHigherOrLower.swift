// 374. Guess Number Higher or Lower

/** 
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return 	     -1 if num is higher than the picked number
 *			      1 if num is lower than the picked number
 *               otherwise return 0 
 * func guess(_ num: Int) -> Int 
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        if guess(1) == 0  {return 1}
        else if guess(n) == 0 {return n}
        
        var first = 1
        var last = n
        var currentNum = Int((first + last)/2)
        var isGuessed = guess(currentNum)
        while isGuessed != 0 {
            if isGuessed == -1 {
                last = currentNum
                
            } else if isGuessed == 1 {
                first = currentNum
                
            }
            currentNum = Int((first + last)/2)
            isGuessed = guess(currentNum)
            
        }
        return currentNum
    }
}
