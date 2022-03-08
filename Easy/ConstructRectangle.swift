// 492. Construct the Rectangle

class Solution {
    func constructRectangle(_ area: Int) -> [Int] {
        var temps = [[Int]]()
        var num = 1
        var halfArea = area == 1 ? 1 : area/2
        while num <= halfArea {
            let div = area % num
            if div == 0 {
                var l = Int(area/num)
                let array : [Int] = [num, l]
                if num - l == 0 {
                    return [num, l]
                }
                temps.append(array)
            }
            num += 1
        }
        
        var lowest = Int.max
        var output = [Int]()
        for temp in temps {
            if temp[0] - temp[1] == 0 {
                return temp
            }
            if abs(temp[0] - temp[1]) < lowest {
                output = [temp[1], temp[0]]
                lowest = abs(temp[0] - temp[1])
            }
        }
        
        return output
    }
}
