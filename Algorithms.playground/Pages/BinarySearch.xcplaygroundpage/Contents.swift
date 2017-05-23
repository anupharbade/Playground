//: [Previous](@previous)
//: # Binary search
import Foundation
//: ### Recursion technique
/*
 Desc - This method searches an element using Binary search technique. It uses recursion to implement the Binary search.
 Input -
 target - element to be searched (Int?)
 collection - source collection where element will be searched. ([Int]?)
 Output -
 Int? - element, if found, else nil
 */
func binarySearchRecursion(_ target:Int?, _ collection:[Int]?) -> Int? {
    
    var element:Int? = nil
    
    let startIndex = 0
    let endIndex = (collection?.count)! - 1
    let midIndex = (endIndex - startIndex)/2
    
    if let target = target, let collection = collection {
        if startIndex == endIndex {
            if target == collection[midIndex] {
                element = collection[midIndex]
            }
        } else {
            if target < collection[midIndex] {
                //!Search in the left half of the array
                let leftSubArray = collection[startIndex..<midIndex]
                element = binarySearchRecursion(target, Array(leftSubArray))
            } else if target > collection[midIndex] {
                let rightSubArray = collection[midIndex+1...endIndex]
                //!Search in the right half of the array
                element = binarySearchRecursion(target, Array(rightSubArray))
            }
        }
        
    }
    
    return element
}

//: ### Looping technique
/*
 Desc - This method searches an element using Binary search technique. It uses looping method to implement the Binary search.
 Input -
 target - element to be searched (Int?)
 collection - source collection where element will be searched. ([Int]?)
 Output -
 Int - Index of the element, if found, else the index where it stopped the search.
 */
func binarySearchLooping(_ target:Int?, _ collection:[Int]?) -> Int {
    
    var index = -1
    var startIndex = 0
    var endIndex = (collection?.count)! - 1
    var midIndex = index
    
    if let target = target, let collection = collection {
        while startIndex <= endIndex {
            midIndex = startIndex + (endIndex - startIndex)/2
            
            if target == collection[midIndex] {
                index = midIndex
                break
            } else if target > collection[midIndex] {
                startIndex = midIndex + 1
            } else {
                endIndex = midIndex - 1
            }
        }
    }
    
    if index == -1 {
        index = midIndex
    }
    
    return index
}
//: [Next](@next)
