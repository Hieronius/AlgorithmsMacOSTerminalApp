//
//  MergeSort.swift
//  AlgorithmsWithBasicInput
//
//  Created by Арсентий Халимовский on 22.10.2023.
//

import Foundation

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    // 1.
    var leftIndex = 0
    var rightIndex = 0
    
    // 2.
    var orderedArray: [Int] = []
    
    // Merging logic here!
    
    // 2.1
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else { // if both elemets are equal
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    // 2.2
    while leftIndex < left.count {
        orderedArray.append(left[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < right.count {
        orderedArray.append(right[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

func mergeSort(_ array: [Int]) -> [Int] {
    // 1. Check if there a single element and return it because it's already sorted
    // It's a base case for any recursion functions
    guard array.count > 1 else { return array }
    
    // 2. Split an array into the small ones until you can't do it anymore
    // Recursion gives us ability to try split an array again and again until base case of recursion will drop us from the function
    let middleIndex = array.count / 2
    
    let leftArray = mergeSort(Array(array[0..<middleIndex]))
    let rightArray = mergeSort(Array(array[middleIndex..<array.count]))
    
    return merge(leftArray, rightArray)
}
