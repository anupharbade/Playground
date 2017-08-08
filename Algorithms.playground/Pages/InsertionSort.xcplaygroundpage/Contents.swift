//: [Previous](@previous)
//: # Insertion Sort
import Foundation

/**
 for j=1 to A.length
    i = j-1
    key = A[j]
 
    while i>=0 && A[i]<key
        A[i+1]=A[i]
        i=i+1
 
    A[i+1]=key
 */

func insertionSort_ascending (on array:[Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    var sortedArray = array
    
    for j in 1...(sortedArray.count-1) {
        
        let key = sortedArray[j]
        var i = j-1
        
        while (i >= 0 && key < sortedArray[i]) {
            sortedArray[i+1] = sortedArray[i]
            i = i - 1
        }
        sortedArray[i+1] = key
    }
    
    return sortedArray
}

func insertionSort_descending (on array:[Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    var sortedArray = array
    
    for j in 1...(sortedArray.count-1) {
        
        let key = sortedArray[j]
        var i = j-1
        
        while (i >= 0 && key > sortedArray[i]) {
            sortedArray[i+1] = sortedArray[i]
            i = i - 1
        }
        sortedArray[i+1] = key
    }
    
    return sortedArray
}


let sortedArray_asc = insertionSort_ascending(on: [31,41,59,26,41,58])
let sortedArray_des = insertionSort_descending(on: [31,41,59,26,41,58])

//Hence this is one of the best thing happened to me.
//: [Next](@next)
