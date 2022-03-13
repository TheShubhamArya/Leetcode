// 1184. Distance Between Bus Stops

class Solution {
    func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
        var minimumDistClockwise = 0
        var total = 0
        for num in distance {
            total += num
        }
        
        var distance1 = 0
        if start < destination {
            for i in start..<destination {
                distance1 += distance[i]
            }
        } else if start == destination {
            return 0
        } else {
            for i in destination..<start {
                distance1 += distance[i]
            }
        }
        
        let distance2 = total - distance1
        
        return min(distance1, distance2)
    }
}
