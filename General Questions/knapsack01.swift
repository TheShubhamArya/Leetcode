// Given a set of items, each with a weight and a value, determine the number of each item to include in a collection so that the total weight is less than or equal to a given limit and the total value is as large as possible.

func knapsack(_ v:[Int],_ w:[Int], maxWeight: Int) -> [Int] {
    
    var C = [[Int]](repeating: [Int](repeating: 0, count: maxWeight + 1), count:v.count + 1)
    // knapsack algorithm
    for i in 1...v.count {
        for j in 1..<maxWeight+1{
            if w[i-1] <= j {
                C[i][j] = max(C[i-1][j], C[i-1][j-w[i-1]] + v[i-1])
            } else {
                C[i][j] = C[i-1][j]
            }
        }
    }
    print(C)
    
    let maxCost = C[v.count][maxWeight]
    var i = v.count
    var j = maxWeight
    var currCost = maxCost
    var output = [Int](repeating: 0, count: v.count)
    
    // Finding numbers chosen to get the weight
    while i > 0 && j > 0 && currCost > 0 {
        if C[i-1][j] != C[i][j] {
            currCost -= v[i-1]
            if j >= 0 && currCost >= 0 {
                output[i-1] = 1
            }
            i = i - 1
            while currCost != C[i][j] {
                j -= 1
            }
        } else {
            i = i - 1
        }
    }
    return output
}

let weights = [2,3,4,5,10,18]
let values =  [1,2,5,6,7,20]
let valuesSelected = knapsack(values, weights,maxWeight: 12)

// prints the numbers to get desired weight
for (a,b) in zip(values, valuesSelected) {
    if b == 1 {
        print(a)
    }
}
