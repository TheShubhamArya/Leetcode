// Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).

// The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).

// You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).

class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var output : [[Int]] = []
        var closestDict = [Float:[[Int]]]()
        var k = k
        
        for point in points {
            let distance = calculateDistance(point)
            if closestDict[distance] == nil {
                closestDict[distance] = []
            }
            closestDict[distance]!.append(point)
        }
        
        var sortedDistance = closestDict.sorted(by: {$0.key < $1.key})
        for (dist,point) in sortedDistance {
            for p in point {
                if k == 0 {
                    return output
                }
                output.append(p)
                k -= 1
            }
        }
        return output
    }
    
    func calculateDistance(_ point: [Int]) -> Float {
        let x = point[0]
        let y = point[1]
        var dist = x*x + y*y
        return Float(dist)
    }
}
