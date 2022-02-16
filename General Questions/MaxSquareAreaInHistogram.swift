// Given a histogram in the form of an array, return the max square area that can be formed in the histogram. This question was asked in a roblox coding assessment. 

func getSquareArea(_ histogram: [Int]) -> Int {
    var output = 0
    
    // Iterates through each element
    for (i,num) in histogram.enumerated() {
        
        if i < histogram.count - 1 {
            
            // Gets the last index for the slice. This is calculated by adding the current index + current number. So if the current number is 4 at i = 1, the max we would need to look for would be i + 4 - 1 because after that we will not be able to compute a higher max than the number 4.
            let end = ((i + num - 1) > histogram.count - 1) ? (histogram.count - 1) : (i+num - 1)
            
            let histogramSlice = Array(histogram[i...end])
            if num == histogramSlice.count {
                var didBreak = false
                var lowest = Int.max
                for (j,num2) in histogramSlice.enumerated() {
                    if num2 < output {
                        didBreak = true
                        break
                    }
                    lowest = min(lowest,num2)
                    if lowest == j + 1 {
                        output = max(output, lowest)
                    }
                }
                if !didBreak {
                    output = max(output,lowest)
                }
            }
        }
    }
    return output*output
}

//print(getSquareArea([1,2,3,2,1]))
//print(getSquareArea([4,3,4,1,5,4,6,4]))
//print(getSquareArea([4,3,4]))
//print(getSquareArea([1,1,1,2,2,1,1,2,3,3,5,5,6,7,8,1,5,3,5,4]))
