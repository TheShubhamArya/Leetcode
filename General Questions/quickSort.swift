/// Quick Sort algorithm
func quickSort(with array: inout [Int], left: Int, right: Int) {
    if left >= right {
        return
    }
    let p = partition(&array,left,right)
    quickSort(with: &array, left: left, right: p-1)
    quickSort(with: &array, left: p+1, right: right)
}

func partition(_ array: inout [Int],_ left: Int,_ right: Int) -> Int{
    let pivot = array[right]
    var i = left - 1
    for j in left..<right {
        if array[j] < pivot {
            i += 1
            let temp = array[j]
            array[j] = array[i]
            array[i] = temp
        }
    }
    let temp = array[i+1]
    array[i+1] = array[right]
    array[right] = temp
    return i + 1
}

//var arr = [9,8,7,6,5,4,3,2,1]//[4,1,2,3,5,7,6,8,11,9]
//quickSort(with: &arr, left: 0, right: arr.count - 1)
//print("final array: ",arr)
